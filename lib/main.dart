import 'package:flutter_union_example/user_class.dart';
import 'package:flutter_union_example/user_enum.dart';
import 'package:flutter_union_example/user_union.dart';

void main() {
  final userEnum = UserEnum.admin;
  final userClass = Admin('Juan');
  final unionUser = User.admin('Carlos');

  if (userClass is Admin) print('Instancia de la clase userenum: Admin');

  /// when implementa una función de callback por cada tipo de usuario.
  /// Se pasan por parámetros las propiedades del objeto.
  unionUser.when(
    admin: (name) {
      print('El nombre de admin es $name');
    },
    author: (name) => print('El nombre de author es $name'),
  );

  /// Implementa función de callback donde se pasan por parámetros una
  /// instancia del objeto.
  unionUser.map(
    admin: (user) => print(user.name),
    author: (user) => print(user.name),
  );

  unionUser.maybeMap(
    author: (user) => print(user.name),
    orElse: () => print('Se está ejecutando orElse'),
  );
}
