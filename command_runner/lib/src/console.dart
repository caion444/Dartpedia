import 'dart:io';

const String ansiEscapeLiteral = '\x1B';

/// Enum aprimorado para gerenciar cores ANSI no terminal.
enum ConsoleColor {
  lightBlue(18, 255, 255),
  red(255, 0, 0),
  green(0, 255, 0),
  yellow(255, 255, 0),
  grey(128, 128, 128),
  white(255, 255, 255);

  const ConsoleColor(this.r, this.g, this.b);

  final int r;
  final int g;
  final int b;

  String get ansiSetColor => '$ansiEscapeLiteral[38;2;$r;$g;${b}m';

  static String get ansiResetColor => '$ansiEscapeLiteral[0m';

  String applyForeground(String text) {
    return '$ansiSetColor$text$ansiResetColor';
  }
}

/// Extensão na classe String para formatação visual e cores no console.
extension TextUtility on String {
  String get titleText => ConsoleColor.lightBlue.applyForeground(this);

  String get errorText => ConsoleColor.red.applyForeground(this);

  String get instructionText => ConsoleColor.yellow.applyForeground(this);

  String get successText => ConsoleColor.green.applyForeground(this);

  String get subtleText => ConsoleColor.grey.applyForeground(this);

  List<String> splitLinesByLength(int length) {
    final List<String> words = split(' ');
    final List<String> output = <String>[];
    final StringBuffer strBuffer = StringBuffer();
    for (int i = 0; i < words.length; i++) {
      final String word = words[i];
      if (strBuffer.length + word.length <= length) {
        strBuffer.write(word.trim());
        if (strBuffer.length + 1 <= length) {
          strBuffer.write(' ');
        }
      } else {
        output.add(strBuffer.toString().trim());
        strBuffer.clear();
        strBuffer.write('${word.trim()} ');
      }
    }
    if (strBuffer.isNotEmpty) {
      output.add(strBuffer.toString().trim());
    }
    return output;
  }
}

void write(String text, {int duration = 50}) {
  stdout.write(text);
}
