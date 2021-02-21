import 'package:equatable/equatable.dart';
///Classe do modelo de Usuário.
class User extends Equatable {
  final int id;
  final String login;
  final String avatar_url;
  User({this.id, this.login, this.avatar_url});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      login: json['login'],
      avatar_url: json['avatar_url'],
    );
  }
  @override
  List<Object> get props => [
        id,
        login,
        avatar_url,
      ];
}
