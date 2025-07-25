import 'package:flutter/material.dart';

Widget livroPopular() {
  bool naEstante = false;

  return StatefulBuilder(
    builder: (context, StateSetter setState) => Center(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: const Color(0xFFFEFEFE),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset('livrocard.png', height: 150),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Título do Livro - Autor',
                  style: const TextStyle(
                    color: Color(0xFF221D57),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor.',
                style: TextStyle(color: Colors.black87),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () => setState(() => naEstante = !naEstante),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(
                        naEstante ? 0xFFFEFEFE : 0xFF221D57,
                      ),
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      naEstante ? 'Lendo' : 'Começar leitura',
                      style: TextStyle(
                        color: Color(naEstante ? 0xFF221D57 : 0xFFFEFEFE),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
