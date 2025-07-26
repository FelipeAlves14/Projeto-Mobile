import 'package:flutter/material.dart';
import 'package:pratiler_mobile/controllers/feed_controller.dart';
import 'package:pratiler_mobile/models/postagem.dart';
import 'package:pratiler_mobile/views/cabecalho.dart';
import 'package:pratiler_mobile/views/postagem.dart';
import 'package:pratiler_mobile/views/rodape.dart';

Future<dynamic> fetchPostagens() {
  return FeedController.fetchPostagens();
}

class FeedPage extends StatelessWidget {
  FeedPage({super.key});
  late Future<dynamic> postagens = fetchPostagens();
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
              child: FutureBuilder(
                future: postagens,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    final postagens = snapshot.data!;
                    return ListView.builder(
                      itemCount: postagens.length,
                      itemBuilder: (context, index) =>
                          postagem(data: Postagem.fromJson(postagens[index])),
                    );
                  }
                },
              ),
            ),
          ),

          Rodape(selecionado: "postagens"),
        ],
      ),
    );
  }
}
