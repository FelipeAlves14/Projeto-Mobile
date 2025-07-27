import 'package:pratiler_mobile/controllers/auth_controller.dart';
import 'package:pratiler_mobile/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FeedController {
  static fetchPostagens() async {
    if (!AuthController.isAuthenticated) {
      await AuthController.login();
    }
    final response = await http.get(
      Uri.parse('$apiUrl/postagens'),
      headers: {
        'Authorization': 'Bearer ${await AuthController.getToken() ?? ''}',
      },
    );
    return (jsonDecode(response.body) as List<dynamic>)
        .map((postagem) => postagem as Map<String, dynamic>)
        .toList();
  }
}
