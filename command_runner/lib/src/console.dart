import 'dart:io';

enum ConsoleColor {
  lightBlue('\x1B[94m'),
  green('\x1B[32m'),
  red('\x1B[31m'),
  yellow('\x1B[33m'),
  reset('\x1B[0m');

  final String code;
  const ConsoleColor(this.code);
}

extension ColoredString on String {
  String get titleText => '${ConsoleColor.lightBlue.code}$this${ConsoleColor.reset.code}';
  String get errorText => '${ConsoleColor.red.code}$this${ConsoleColor.reset.code}';
  String get instructionText => '${ConsoleColor.yellow.code}$this${ConsoleColor.reset.code}';
}

void write(String text) {
  stdout.write(text);
}
