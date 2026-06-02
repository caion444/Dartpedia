/*----------------------------------------------------------------------------

Informacoes:  
       
O aplicativo cli faz parte do projeto Dartpedia.

O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart.
       
cli.dart - Fica localizado na pasta dartpedia, em /dartpedia/cli/bin.

Outras informacoes importantes sobre o cli; nosso aplicoes

-------------------------------------------------------------------------------

Funcionamento:

Inicialmente o cli, ao ser executado, mostra uma saudacao na tela, por exemplo:

Dentro da pasta dartpedia em /home/irineu.caldeira/dartpedia/cli rode o comando
dart run; deve aparecer a mensagem de saudacao, "Hello, Dart!"

Obs. Importante ! Este aplicativo este em desenvolvimento e ao longo do tempo o
comportamento do aplicativo pode mudar.

-------------------------------------------------------------------------------

Dicionario do Versionamento:

v = versao

0 = Inicio do versionamento

. = Implementacao de versionamento

1 = Proxima versao, 2, proxima versao, e assim por diante.

-------------------------------------------------------------------------------

Historico do Versionamento:

-------------------------------------------------------------------------------

Versao: 0.0.0

Data: 27/03/2026

Descricao do codigo: Codigo original....

Codigo:

import 'package:cli/cli.dart' as cli;

void main(List<String> arguments) {
        print('Hello world: ${cli.calculate()}!');
}

Saida padrao ao executar o codigo:

Building package executable...
Built cli:cli.
Hello world: 42!

-------------------------------------------------------------------------------

Versao: 0.0.1

Data: 27/03/2026

Descricao da atualizacao: Simplifique a saida. Apague a primeira linha, ...import...
e troque a saudacao para "Hello, Dart!".

Codigo:

void main(List<String> arguments) {
        print('Hello, Dart!');
}

Saida padrao ao executar o codigo:

Building package executable...
Built cli:cli.
Hello, Dart!

-------------------------------------------------------------------------------

Versao: 0.0.2

Data: 06/04/2026

Descricao da atualizacao: Implementar comandos de versao e ajuda
 
Codigo:

const version = '0.0.2';

void main(List<String> arguments) {
        if (arguments.isEmpty) {
                print('Hello, Dart!');
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        }
}

Saida ao executar o codigo: (Execute sua aplicacao com o argumento de versao: dart bin/cli.dart version). Obs. Importate !! Se voce executar seu aplicativo sem argumentos, ainda vera "Ola, Dart!". Voce devera ver agora:

Dartpedia CLI version 0.0.2

-------------------------------------------------------------------------------

Versao: 0.0.3

Data: 06/04/2026

Descricao da atualizacao: Adicione uma printUsage funcao. Para tornar a saida mais amigavel ao usuario, crie uma funcao separada para exibir as informacoes de uso.

Codigo:

const version = '0.0.3'; // Add this line

void main(List<String> arguments) {
        if (arguments.isEmpty) {
                print('Hello, Dart!');
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        }

}

void printUsage() { // Add this new function
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

Saida ao executar o codigo: Perguntas: O que acontece ao executar este codigo, com o comando Dart run ? E o comando dart run cli.dart version ? Como executo o help ? E o search ?

-------------------------------------------------------------------------------

Versao: 0.0.4

Data: 06/04/2026

Descricao da atualizacao: Implemente o help comando e refine main: Agora, integre o help comando usando uma else if instrucao e limpe o comportamento padrao para chamara printUsage funcao.

Codigo:

const version = '0.0.4';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage();
  } // Fecha o bloco 'else'
} // <--- ESTA É A CHAVE MAIS IMPORTANTE! Ela fecha a função main() ANTES de começar a printUsage().

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
} // Fecha a função printUsage()

       
Saida ao executar o codigo: 1 -> dart bin/cli.dart help. Tente tambem, 2 -> dart bin/cli.dart.

Saida 1 -> The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>

Saida 2 -> The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>

Obs. Importante na saida ao executar o codigo: Observe que as informacoes de uso continuam sendo exibidas. Neste ponto, qualquer comando que voce nao tenha definido tambem exibira informacoes de uso. Este eh o comportamento esperado por enquanto.  

------------------------------------------------------------------------------------

Versao: 0.0.5

Data: 06/04/2026

Descricao da atualizacao: Implementar o comando de busca.

Implemente um comando basico search que receba o titulo de um artigo como entrada. Ao desenvolver essa funcionalidade, voce trabalhara com List manipulacao de dados, verificacao de valores nulos e interpolacao de strings.

1. Integre o search comando em main: Primeiro, modifique a mainfuncao cli/bin/cli.dart para incluir um else if que lide com o search comando. Por enquanto, basta imprimir uma mensagem de espaco reservado.

Codigo:

const version = '0.0.5'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida ao executar o codigo: Teste o novo comando: Execute sua aplicacao com o search comando:

dart bin/cli.dart search

Voce devera ver:

Search command recognized!

-------------------------------------------------------------------------------

Versao: 0.0.6

Data: 07/04/2026

Descricao da atualizacao: Defina a search Wikipedia funcao: O search comando eventualmente executara alogica principal do seu aplicativo chamando uma funcao chamada search Wikipedia. Por enquanto, faca
com que ela search Wikipedia imprima os argumentos passados para ela com o search comando.

Coloque esta nova funcao abaixo de main.

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function)


Codigo:
            

const version = '0.0.5'; // Add this line

void main(List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage();
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        } else if (arguments.first == 'search') {
        // Add this new block:
        final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
                searchWikipedia(inputArgs);
        } else {
                printUsage();
        }
}

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // Add this new function
        print(
        "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

-------------------------------------------------------------------------------






// Codigo valido ate o momento !!

// Codigo:

const version = '0.0.6'; // <-- Adicionado esta linha na versao '0.0.2'

void main(List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage();
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        } else if (arguments.first == 'search') {
        // <-- Adicionado este bloco de codigo na versao '0.0.6:
        final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
                searchWikipedia(inputArgs);
        } else {
                printUsage();
        }
}

void searchWikipedia(List<String>? arguments) { // <-- Adicionado esta nova funcao e argumento do tipo "?" na versao '0.0.6'
print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // <-- Adicionado esta funcao na versao '0.0.3' e '0.0.4'
        print(
        "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}


// ---------------------------------------------------------------------------
*/
/*
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

const version = '0.0.10';

// =========================
// FUNÇÃO PRINCIPAL
// =========================
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

// =========================
// BUSCA NA WIKIPEDIA
// =========================
void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Digite o título do artigo:');
    final input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print('Nenhum título informado.');
      return;
    }

    articleTitle = input;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('\nBuscando "$articleTitle"...\n');

  var article = await getWikipediaArticle(articleTitle);

  print('RESUMO:\n');
  print(article);
}

// =========================
// CHAMADA DA API (COM JSON BONITO)
// =========================
Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    // pega só o resumo (extract)
    return data['extract'] ?? 'Sem resumo disponível.';
  }

  return 'Erro ao buscar artigo: ${response.statusCode}';
}

// =========================
// AJUDA
// =========================
void printUsage() {
  print('''
Dartpedia CLI

Comandos:
  help                Mostra ajuda
  version             Mostra versão
  wikipedia <titulo>  Busca resumo na Wikipedia

Exemplo:
  dart run bin/cli.dart wikipedia "Dart_(programming_language)"
''');
}

/*
 
 ---

Versao: 0.0.5

Data: 02/06/2026

Descricao da atualizacao: Introducao a Programacao Orientada a Objetos (POO) para estruturar o Dartpedia CLI.

Objetivo:
Criar uma base mais organizada para o aplicativo utilizando conceitos de orientacao a objetos, incluindo classes abstratas, heranca, sobrescrita de metodos e enumeracoes.

Implementacoes:

1. Criacao da classe abstrata Command.
2. Definicao de um contrato para todos os comandos da aplicacao.
3. Implementacao de classes concretas HelpCommand e VersionCommand.
4. Utilizacao de heranca para reaproveitamento de codigo.
5. Utilizacao de sobrescrita de metodos com @override.
6. Criacao de enum para representar os tipos de comando disponiveis.
7. Estruturacao inicial da arquitetura do CLI.

Codigo implementado:

enum CommandType {
help,
version,
search
}

abstract class Command {
String get name;

void run();
}

class HelpCommand extends Command {
@override
String get name => 'help';

@override
void run() {
print('Exibindo ajuda...');
}
}

class VersionCommand extends Command {
@override
String get name => 'version';

@override
void run() {
print('Dartpedia CLI version 0.0.5');
}
}

Saida ao executar o codigo:

dart run help

Exibindo ajuda...

Saida ao executar o codigo:

dart run version

Dartpedia CLI version 0.0.5

Obs. Importante:
Esta versao teve como principal objetivo preparar a arquitetura do Dartpedia para o crescimento futuro do projeto, utilizando os principios da Programacao Orientada a Objetos.

---
Versao: 0.0.6
Data: 2/06/2026
Descricao da atualizacao: Implementacao do comando de busca.
Objetivo:
Criar o comando wikipedia para realizar consultas na Wikipedia.
Codigo:
const version = '0.0.6';
void main(List arguments) {
if (arguments.isEmpty || arguments.first == 'help') {
printUsage();
} else if (arguments.first == 'version') {
print('Dartpedia CLI version $version');
} else if (arguments.first == 'wikipedia') {
final inputArgs =
arguments.length > 1 ? arguments.sublist(1) : null;
searchWikipedia(inputArgs);
}
}
void searchWikipedia(List? arguments) {
print(
'searchWikipedia received arguments: $arguments'
);
}
Saida ao executar o codigo:
dart run wikipedia Dart
searchWikipedia received arguments: [Dart]

Versao: 0.0.7

Data: 02/06/2026

Descricao da atualizacao: Tratamento de erros e excecoes personalizadas.

Objetivo:
Melhorar a robustez da aplicacao.

Codigo:
class WikipediaException implements Exception {
final String message;
WikipediaException(this.message);
@override
String toString() =>
'WikipediaException: $message';
}
Future getWikipediaArticle(
String articleTitle) async {
try {
final url = Uri.https(
'en.wikipedia.org',
'/api/rest_v1/page/summary/$articleTitle',
);
final response = await http.get(url);

if (response.statusCode == 200) {
  final data = jsonDecode(response.body);
  return data['extract'];
}

throw WikipediaException(
  'Artigo nao encontrado.'
);
} catch (_) {
throw WikipediaException(
'Erro ao acessar a Wikipedia.'
);
}
}
Saida ao executar o codigo:
dart run wikipedia testeinexistente
WikipediaException:
Artigo nao encontrado.

Versao: 0.0.8
Data: 02/06/2026
Descricao da atualizacao: Implementacao de enums e extensoes.
Objetivo:
Adicionar recursos avancados de POO.
Codigo:
enum ConsoleColor {
red('\x1B[31m'),
green('\x1B[32m'),
yellow('\x1B[33m'),
reset('\x1B[0m');
final String code;
const ConsoleColor(this.code);
}
void printColor(
String text,
ConsoleColor color,
) {
print(
'${color.code}$text${ConsoleColor.reset.code}'
);
}
Saida ao executar o codigo:
Busca realizada com sucesso!
Obs.:
A mensagem pode aparecer colorida.
/*



versao completa

*/

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

const version = '1.0.0';

// =========================
// EXCEÇÃO PERSONALIZADA (Lição 06)
// =========================
class CommandException implements Exception {
  final String message;

  CommandException(this.message);

  @override
  String toString() => 'Erro: $message';
}

// =========================
// ENUM COM CORES (Lição 07)
// =========================
enum ConsoleColor {
  red('\x1B[31m'),
  green('\x1B[32m'),
  yellow('\x1B[33m'),
  blue('\x1B[34m'),
  reset('\x1B[0m');

  final String code;
  const ConsoleColor(this.code);
}

// =========================
// EXTENSION (Lição 07)
// =========================
extension ColoredText on String {
  String color(ConsoleColor color) {
    return '${color.code}$this${ConsoleColor.reset.code}';
  }
}

// =========================
// MAIN
// =========================
Future<void> main(List<String> arguments) async {
  try {
    if (arguments.isEmpty || arguments.first == 'help') {
      printUsage();
    } else if (arguments.first == 'version') {
      print(
        'Dartpedia CLI version $version'
            .color(ConsoleColor.green),
      );
    } else if (arguments.first == 'search' ||
        arguments.first == 'wikipedia') {
      final inputArgs =
          arguments.length > 1 ? arguments.sublist(1) : null;

      await searchWikipedia(inputArgs);
    } else {
      throw CommandException(
        'Comando "${arguments.first}" não reconhecido.',
      );
    }
  } on CommandException catch (e) {
    print(e.toString().color(ConsoleColor.red));
    printUsage();
  } catch (e) {
    print(
      'Erro inesperado: $e'
          .color(ConsoleColor.red),
    );
  }
}

// =========================
// PESQUISA WIKIPEDIA
// =========================
Future<void> searchWikipedia(
  List<String>? arguments,
) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    stdout.write('Digite o título do artigo: ');
    final input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      throw CommandException(
        'Título do artigo não informado.',
      );
    }

    articleTitle = input;
  } else {
    articleTitle = arguments.join(' ');
  }

  print(
    '\nBuscando "$articleTitle"...\n'
        .color(ConsoleColor.yellow),
  );

  final article =
      await getWikipediaArticle(articleTitle);

  print(
    '===== RESUMO ====='
        .color(ConsoleColor.blue),
  );

  print(article);
}

// =========================
// API WIKIPEDIA + JSON
// =========================
Future<String> getWikipediaArticle(
  String articleTitle,
) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw CommandException(
      'Artigo não encontrado ou erro na API.',
    );
  }

  final json = jsonDecode(response.body);

  if (json is! Map<String, dynamic>) {
    throw CommandException(
      'JSON inválido recebido.',
    );
  }

  return json['extract'] ??
      'Nenhum resumo disponível.';
}

// =========================
// AJUDA APRIMORADA (Lição 08)
// =========================
void printUsage() {
  final buffer = StringBuffer();

  buffer.writeln('');
  buffer.writeln('===== DARTPEDIA CLI =====');
  buffer.writeln('');
  buffer.writeln('Comandos disponíveis:');
  buffer.writeln('  help');
  buffer.writeln('      Mostra esta ajuda');
  buffer.writeln('');
  buffer.writeln('  version');
  buffer.writeln('      Mostra a versão');
  buffer.writeln('');
  buffer.writeln('  search <titulo>');
  buffer.writeln('      Pesquisa artigo');
  buffer.writeln('');
  buffer.writeln('Exemplos:');
  buffer.writeln('  dart run help');
  buffer.writeln('  dart run version');
  buffer.writeln(
    '  dart run search "Dart_(programming_language)"',
  );

  print(buffer.toString());
}













