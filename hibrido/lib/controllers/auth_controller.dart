import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pratiler_mobile/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthController {
  static bool isAuthenticated = false;
  static final FlutterSecureStorage storage = FlutterSecureStorage();
  static Future<void> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$apiUrl/auth/pair'),
      body: jsonEncode({'email': username, 'password': password}),
    );

    final data = jsonDecode(response.body);
    setToken(data['access']);
    isAuthenticated = true;
  }

  static Future<void> setToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  static Future<String?> getToken() async {
    return await storage.read(key: 'token');
  }
}
