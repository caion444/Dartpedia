/*Integrante 2 — Classes abstratas e herança

Responsabilidades:

Criar classes abstratas
Implementar herança entre classes
Criar subclasses
Aplicar reutilização de código

Exemplo:
*/
abstract class Person {
  void showInfo();
}

class User extends Person {
  @override
  void showInfo() {
    print('Usuário');
  }
}
