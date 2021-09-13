import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http_request_app/models/user_class.dart';

class HttpServices {
  Future<List<User>> getData() async {
    final userUrl = "https://jsonplaceholder.typicode.com/users";
    try {
      final userData = await http.get(Uri.parse(userUrl));
      final jsonData = json.decode(userData.body);
      List<User> users = [];

      for (var u in jsonData) {
        User userData = User(
          id: u['id'],
          username: u['username'],
          email: u['email'],
          name: u['name'],
        );
        users.add(userData);
      }
      return users;
    } catch (error) {
      throw (error);
    }
  }
}
