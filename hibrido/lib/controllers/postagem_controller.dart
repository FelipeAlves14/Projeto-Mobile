import 'dart:convert';

import 'package:pratiler_mobile/utils.dart';
import 'package:http/http.dart' as http;
import 'package:pratiler_mobile/controllers/auth_controller.dart';

class PostagemController {
  static curtirPostagem(int postagemId) async {
    if (!AuthController.isAuthenticated) {
      await AuthController.login();
    }
    final response = await http.post(
      Uri.parse('$apiUrl/curtidas'),
      body: jsonEncode({'postagem_id': postagemId}),
      headers: {
        'Authorization': 'Bearer ${await AuthController.getToken() ?? ''}',
      },
    );
    return jsonDecode(response.body);
  }
}
