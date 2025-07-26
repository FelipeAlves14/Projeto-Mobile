import 'package:flutter/material.dart';
import 'package:pratiler_mobile/models/postagem.dart';
import 'package:pratiler_mobile/utils.dart';

Widget postagem({required Postagem data}) {
  bool seguindo = false;
  bool curtido = data.curtido;
  int curtidas = data.curtidas;

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
                    children: [
                      Text(
                        data.leitor.username,
                        style: TextStyle(
                          color: Color(0xFF221D57),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '${data.data.day} de ${getMes(data.data.month)} de ${data.data.year}',
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
                onPressed: () => setState(() => seguindo = seguindo),
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

              Text(
                'Da página ${data.paginaInicial} até a página ${data.paginaFinal}',
                style: const TextStyle(color: Color(0xFF221D57), fontSize: 14),
              ),
              const SizedBox(height: 6),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  data.texto,
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
                      curtidas += curtido ? 1 : -1;
                      curtido = !curtido;
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
