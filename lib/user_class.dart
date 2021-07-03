/// Con la clase abstracta podemos guardar información. No podemos restringir
/// su uso, cualquier clase puede extenderla.
abstract class UserClass {
  UserClass({required this.name});

  final String name;
}

class Admin extends UserClass {
  Admin(String name) : super(name: name);
}

class Author extends UserClass {
  Author(String name) : super(name: name);
}
