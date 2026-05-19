/*-----------------------------------------------------------------------------
/*----------------------------------------------------------------------------

Informacoes:  
   
       
O aplicativo cli faz parte do projeto Dartpedia.

O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart.
   
O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart.
       
cli.dart - Fica localizado na pasta dartpedia, em /dartpedia/cli/bin.

Outras informacoes importantes sobre o cli; nosso aplicativo.


caio lindo e bom de codigo

Autor       : Caio idiota <caiotomaz20102008@gmail.com>
=======
>>>>>>> b73b9458ab69d5fada3bd6555d7c4f91fb52241d

Autor       : Caioperelherinha <caiotomaz20102008@gmail.com>
Manutencao  :
Outras informacoes importantes sobre o cli; nosso aplicoes

-------------------------------------------------------------------------------

Historico do Versionamento:

Versao: 0.0.0
Data: 27/03/2026
Descricao do codigo: Codigo original....

-------------------------------------------------------------------------------

Versao: 0.0.1
Data: 27/03/2026
Descricao da atualizacao: Simplifique a saida. Apague a primeira linha, ...import... e troque a saudacao para "Hello, Dart!".

-------------------------------------------------------------------------------

Versao: 0.0.2
Data: 27/03/2026
Descricao da atualizacao: Implementar comandos de versao e ajuda

-------------------------------------------------------------------------------

Versao: 0.0.3
Data: 27/03/2026
Descricao da atualizacao: Adicione uma printUsage funcao para tornar a saida amigavel.

-------------------------------------------------------------------------------

Versao: 0.0.4
Data: 27/03/2026
Descricao da atualizacao: Implemente o help comando e refine main.

-------------------------------------------------------------------------------

Versao: 0.0.6
Data: 07/04/2026
Descricao da atualizacao: Defina a search Wikipedia funcao estrutural (Placeholder).

-------------------------------------------------------------------------------

Versao: 0.0.10
Data: 15/04/2026
Descricao da atualizacao: Implementação do comando de busca integrado com http e tratamento de respostas JSON da API da Wikipedia.

-------------------------------------------------------------------------------

Versao: 0.0.11
Data: 18/05/2026
Descricao da atualizacao (Tarefa 4): Refatoração completa do cli/bin/cli.dart. Remoção das lógicas locais de comandos e tratamento de funções da API. Transferência de responsabilidade de execução de argumentos para a classe externa CommandRunner do pacote local 'command_runner'. Adição do modificador async à função main.

-------------------------------------------------------------------------------
*/

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart'; // Importação adicionada na Tarefa 4

// ============================================================================
// CÓDIGO ATIVO (VERSÃO 0.0.11 - REFATORADO À MANEIRA DO DART)
// ============================================================================

void main(List<String> arguments) async {
  // Instancia o gerenciador de comandos do pacote independente externo
  var runner = CommandRunner();
 
  // Aguarda a conclusão das operações assíncronas delegadas ao pacote
  await runner.run(arguments);
}
