# Dartpedia CLI

## Sobre o Projeto

O Dartpedia CLI é um aplicativo de linha de comando desenvolvido em Dart que permite pesquisar artigos da Wikipedia diretamente pelo terminal.

O objetivo do projeto foi praticar conceitos da linguagem Dart vistos durante as aulas, como Programação Orientada a Objetos (POO), tratamento de exceções, consumo de APIs, manipulação de JSON e uso de comandos em terminal.

---

## O que o programa faz?

O usuário pode executar alguns comandos pelo terminal:

* Ver a ajuda do programa
* Ver a versão atual
* Pesquisar artigos da Wikipedia
* Receber mensagens de erro quando algo estiver errado

---

## Tecnologias Utilizadas

* Dart
* Package HTTP
* API da Wikipedia
* JSON

---

## Como Executar

Primeiro instale as dependências:

```bash
dart pub get
```

Depois execute o projeto:

```bash
dart run
```

---

## Comandos Disponíveis

### Help

Mostra os comandos disponíveis.

```bash
dart run help
```

### Version

Mostra a versão atual do sistema.

```bash
dart run version
```

### Search

Pesquisa um artigo na Wikipedia.

```bash
dart run search Dart
```

ou

```bash
dart run wikipedia Dart
```

Exemplo de saída:

```text
Buscando "Dart"...

===== RESUMO =====

Dart é uma linguagem de programação...
```

---

## Estrutura do Projeto

O sistema foi dividido em algumas partes principais:

### Main

Responsável por identificar qual comando o usuário digitou e executar a ação correta.

### Search Wikipedia

Função responsável por realizar a busca do artigo solicitado.

### API da Wikipedia

Realiza a comunicação com a API da Wikipedia e retorna o resumo do artigo encontrado.

### CommandException

Classe criada para tratar erros personalizados do sistema.

### ConsoleColor

Enum utilizada para exibir mensagens coloridas no terminal.

### Extension ColoredText

Extensão criada para facilitar a aplicação de cores nos textos exibidos.

---

## Tratamento de Erros

Alguns erros tratados pelo sistema:

* Comando inexistente
* Artigo não encontrado
* Título vazio
* Problemas na comunicação com a API

Exemplo:

```bash
dart run teste
```

Saída:

```text
Erro: Comando "teste" não reconhecido.
```

---

## Evolução do Projeto

| Versão | Atualização                   |
| ------ | ----------------------------- |
| 0.0.0  | Primeiro código (Hello World) |
| 0.0.1  | Alteração da saudação         |
| 0.0.2  | Comando de versão             |
| 0.0.3  | Criação da função de ajuda    |
| 0.0.4  | Implementação do comando help |
| 0.0.5  | Início do comando search      |
| 0.0.6  | Busca na Wikipedia            |
| 0.0.7  | Tratamento de exceções        |
| 0.0.8  | Enums e Extensions            |
| 1.0.0  | Versão final do projeto       |

---

## Conclusão

Durante o desenvolvimento do Dartpedia CLI foi possível aprender e aplicar diversos conceitos da linguagem Dart, principalmente Programação Orientada a Objetos, consumo de APIs e tratamento de exceções.

O projeto serviu como prática para o desenvolvimento de aplicações em linha de comando e para entender melhor como ocorre a comunicação entre sistemas através de APIs.

---

## Integrantes

* Caio
* Eloiza
* Gabrielly
* Pietro
