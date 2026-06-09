# Dartpedia CLI

## Sobre o Projeto

O Dartpedia CLI é um aplicativo de linha de comando desenvolvido em Dart que permite pesquisar artigos da Wikipedia diretamente pelo terminal.

O projeto foi criado com o objetivo de praticar conceitos estudados durante as aulas, como Programação Orientada a Objetos (POO), consumo de APIs, manipulação de JSON, tratamento de exceções, registro de logs e desenvolvimento de aplicações em linha de comando.

---

## O que o programa faz?

O usuário pode executar diferentes comandos pelo terminal para:

* Visualizar a ajuda do sistema
* Consultar a versão atual
* Pesquisar artigos da Wikipedia
* Receber mensagens de erro amigáveis
* Registrar erros e eventos em arquivos de log

---

## Tecnologias Utilizadas

* Dart
* Package HTTP
* Package Logging
* API da Wikipedia
* JSON

---

## Como Executar

Primeiro instale as dependências:

```bash
dart pub get
```

Depois execute o programa:

```bash
dart run
```

---

## Comandos Disponíveis

### Help

Exibe todos os comandos disponíveis.

```bash
dart run help
```

### Version

Exibe a versão atual do sistema.

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

### Exemplo de Saída

```text
Buscando "Dart"...

===== RESULTADO =====

Título: Dart

Dart é uma linguagem de programação...
```

---

## Estrutura do Projeto

### Main

Responsável por interpretar os comandos digitados pelo usuário e executar as funcionalidades correspondentes.

### Wikipedia API

Realiza a comunicação com a API da Wikipedia e retorna os dados dos artigos pesquisados.

### Search Wikipedia

Função responsável pela busca de artigos a partir do título informado pelo usuário.

### CommandException

Classe criada para tratar exceções personalizadas do sistema.

### ConsoleColor

Enum utilizada para exibir mensagens coloridas no terminal, melhorando a experiência do usuário.

### ColoredText

Extension criada para facilitar a aplicação de cores nos textos exibidos.

### Logger

Responsável por registrar informações, avisos e erros em arquivos de log dentro da pasta `logs`.

---

## Sistema de Logs

A aplicação possui um sistema de logs para auxiliar na identificação de erros e no monitoramento do funcionamento do programa.

Os arquivos são armazenados automaticamente na pasta:

```text
logs/
```

Exemplo de registro:

```text
[2026-06-09 14:00:00.000 - errors]
WARNING: Artigo não encontrado.
```

---

## Tratamento de Erros

O sistema realiza o tratamento de diversas situações, como:

* Comando inexistente
* Artigo não encontrado
* Título vazio
* Falha na comunicação com a API
* Erros inesperados da aplicação

Exemplo:

```bash
dart run teste
```

Saída:

```text
Erro: Comando não reconhecido.
```

---

## Evolução do Projeto

| Versão | Atualização                       |
| ------ | --------------------------------- |
| 0.0.0  | Primeiro código (Hello World)     |
| 0.0.1  | Alteração da saudação             |
| 0.0.2  | Comando de versão                 |
| 0.0.3  | Criação da função de ajuda        |
| 0.0.4  | Implementação do comando help     |
| 0.0.5  | Início do comando search          |
| 0.0.6  | Integração com a API da Wikipedia |
| 0.0.7  | Tratamento de exceções            |
| 0.0.8  | Enums e Extensions                |
| 1.0.0  | Primeira versão funcional         |
| 1.1.0  | Busca de artigos utilizando API   |
| 1.2.0  | Implementação do sistema de logs  |

---

## Aprendizados

Durante o desenvolvimento do Dartpedia CLI foi possível aplicar conceitos importantes da linguagem Dart, como:

* Programação Orientada a Objetos
* Consumo de APIs REST
* Manipulação de JSON
* Tratamento de exceções
* Sistema de logs
* Desenvolvimento de aplicações CLI

O projeto serviu como prática para compreender melhor a comunicação entre sistemas e a organização de aplicações em Dart.

---

## Integrantes

* Caio
* Eloiza
* Gabrielly
* Pietro
