import 'package:flutter/material.dart';
import 'package:pratiler_mobile/utils.dart';
import 'package:pratiler_mobile/models/postagem.dart';
import 'package:pratiler_mobile/views/cabecalho.dart';
import 'package:pratiler_mobile/views/postagem.dart';
import 'package:pratiler_mobile/views/rodape.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Postagem>> fetchPostagens() async {
  final response = await http.get(Uri.parse('$apiUrl/postagens'));

  if (response.statusCode == 200) {
    // Se a chamada for bem-sucedida, analise os dados e retorne uma lista de postagens
    return jsonDecode(response.body);
  } else {
    throw Exception('Falha ao carregar postagens');
  }
}

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F8FF),
      body: Column(
        children: [
          Cabecalho(),

          Expanded(
            flex: 1,
            child: Center(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => postagem(),
              ),
            ),
          ),

          Rodape(selecionado: "postagens"),
        ],
      ),
    );
  }
}
