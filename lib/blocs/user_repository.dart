import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:teste_green/models/users_model.dart';

abstract class UserRepository {
  Future<List<User>> getAllUsers();
}

const API_URL_BASE = 'https://api.github.com/users';
const Map<String, String> API_HEADERS = {
  'Content-Type': 'application/json; charset=UTF-8'
};

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> getAllUsers() async {
    try {
      final response = await http.get('$API_URL_BASE');
      if (response.statusCode == 200) {
        return (json.decode(response.body) as List)
            .map((i) => User.fromJson(i))
            .toList();
      } else {
        throw Exception('Falha ao carregar');
      }
    } catch (error) {
      throw Exception('Falha ao carregar' + error);
    }
  }
}
