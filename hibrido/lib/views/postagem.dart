import 'package:flutter/material.dart';

Widget postagem() {
  return Center(
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
                        color: Color(0xFF3D3569),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '14 de julho de 2025',
                      style: TextStyle(color: Color(0xFF6761A8), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF221D57),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 14),
              ),
              child: const Text('Seguir'),
            ),

            const SizedBox(height: 10),

            const Text(
              'Páginas lidas: 56/300',
              style: TextStyle(color: Color(0xFF3D3569), fontSize: 14),
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
                Image.asset('curtida.png', width: 24, height: 24),
                const SizedBox(width: 8),
                const Text(
                  '23',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3D3569),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
