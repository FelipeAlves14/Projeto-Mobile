import 'livro.dart';
import 'leitor.dart';

class Postagem {
  final int id;
  final String titulo;
  final String conteudo;
  final Leitor leitor;
  final Livro livro;
  final DateTime data;
  final int curtidas;

  Postagem({
    required this.id,
    required this.titulo,
    required this.conteudo,
    required this.leitor,
    required this.livro,
    required this.data,
    required this.curtidas,
  });
}
