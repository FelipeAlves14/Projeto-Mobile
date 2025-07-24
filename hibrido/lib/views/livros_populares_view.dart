import 'package:flutter/material.dart';
import 'package:pratiler_mobile/views/cabecalho.dart';
import 'package:pratiler_mobile/views/livro.dart';
import 'package:pratiler_mobile/views/rodape.dart';

class LivrosPopularesPage extends StatelessWidget {
  const LivrosPopularesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F8FF),
      body: Column(
        children: [
          Cabecalho(),

          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => livroPopular(),
            ),
          ),

          Rodape(selecionado: "populares"),
        ],
      ),
    );
  }
}
