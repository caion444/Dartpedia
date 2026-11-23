import 'dart:io';
import 'package:wikipedia/wikipedia.dart';

const version = '0.0.11';

void main(List<String> arguments) async {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    await handleSearch(inputArgs);
  } else if (arguments.first == 'summary') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    await handleSummary(inputArgs);
  } else {
    printUsage();
  }
}

void printUsage() {
  print(
    "Comandos válidos: 'help', 'version', 'search <TERMO>', 'summary <TITULO>'",
  );
}

Future<void> handleSearch(List<String>? arguments) async {
  final String term = (arguments == null || arguments.isEmpty)
      ? (stdin.readLineSync() ?? '').trim()
      : arguments.join(' ');
  if (term.isEmpty) return;

  final SearchResults results = await search(term);
  print('Resultados encontrados para "${results.searchTerm}":');
  print(results);
}

Future<void> handleSummary(List<String>? arguments) async {
  final String title = (arguments == null || arguments.isEmpty)
      ? (stdin.readLineSync() ?? '').trim()
      : arguments.join(' ');
  if (title.isEmpty) return;

  final Summary summary = await getArticleSummaryByTitle(title);
  print('Título: ${summary.titles.display}');
  print('Resumo: ${summary.extract}');
}
