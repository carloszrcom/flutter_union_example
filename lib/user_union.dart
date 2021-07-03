import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_union.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User.admin(String name) = _Admin;
  const factory User.author(String name) = _Author;
}
