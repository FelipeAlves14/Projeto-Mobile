import 'package:flutter/material.dart';
import 'dart:math';

Widget postagem() {
  bool seguindo = false;
  bool curtido = false;
  int curtidas = Random().nextInt(100);

  return StatefulBuilder(
    builder: (context, StateSetter setState) => Center(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: const Color(0xFFFEFEFE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('perfil_2.png', width: 66, height: 66),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Leitor Exemplo',
                        style: TextStyle(
                          color: Color(0xFF221D57),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '14 de julho de 2025',
                        style: TextStyle(
                          color: Color(0xFF6761A8),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () => setState(() => seguindo = !seguindo),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(seguindo ? 0xFFFEFEFE : 0xFF221D57),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 14),
                ),
                child: Text(
                  seguindo ? 'Seguindo' : 'Seguir',
                  style: TextStyle(
                    color: Color(seguindo ? 0xFF221D57 : 0xFFFEFEFE),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Páginas lidas: 56/300',
                style: TextStyle(color: Color(0xFF221D57), fontSize: 14),
              ),
              const SizedBox(height: 6),

              const Text(
                'O livro está ficando interessante...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor...',
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ),

              Row(
                children: [
                  IconButton(
                    icon: Image.asset(
                      '${curtido ? '' : 'nao_'}curtida.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () => setState(() {
                      curtido = !curtido;
                      curtidas += curtido ? 1 : -1;
                    }),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    curtidas.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF221D57),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
