import 'package:flutter/material.dart';
import 'package:pratiler_mobile/views/cabecalho.dart';
import 'package:pratiler_mobile/views/postagem.dart';
import 'package:pratiler_mobile/views/rodape.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF9F8FF),
        body: Column(
          children: [
            Cabecalho(),

            Expanded(
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
      ),
    );
  }
}
