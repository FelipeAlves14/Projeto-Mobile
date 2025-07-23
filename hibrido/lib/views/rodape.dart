import 'package:flutter/material.dart';

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
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).pushNamed('/livros_populares');
              },
              icon: Image.asset(
                'estrela${selecionado == 'populares' ? "_selecionado" : ""}.png',
                height: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pushNamed('/');
              },
              icon: Image.asset(
                'postagens${selecionado == 'postagens' ? "_selecionado" : ""}.png',
                height: 30,
              ),
            ),
            Image.asset('seguindo.png', height: 30),
            IconButton(
              onPressed: () {
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).pushNamed('/atualizar_leitura');
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
