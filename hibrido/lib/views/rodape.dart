import 'package:flutter/material.dart';
import 'livros_populares_view.dart';
import 'feed_view.dart';
import 'atualizar_leitura_view.dart';

class Rodape extends StatelessWidget {
  final String selecionado;
  const Rodape({super.key, required this.selecionado});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0xFFFEFEFE),
      child: SizedBox(
        height: 58,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('livro.png', height: 30),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LivrosPopularesPage(),
                  ),
                );
              },
              icon: Image.asset(
                'estrela${selecionado == 'populares' ? "_selecionado" : ""}.png',
                height: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FeedPage()),
                );
              },
              icon: Image.asset(
                'postagens${selecionado == 'postagens' ? "_selecionado" : ""}.png',
                height: 30,
              ),
            ),
            Image.asset('seguindo.png', height: 30),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AtualizarLeituraPage(),
                  ),
                );
              },
              icon: Image.asset(
                'postar${selecionado == 'postar' ? "_selecionado" : ""}.png',
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
