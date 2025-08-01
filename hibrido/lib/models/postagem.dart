import 'livro.dart';
import 'leitor.dart';

class Postagem {
  final int id;
  final String texto;
  final Leitor leitor;
  final Livro livro;
  final DateTime data;
  final bool curtido;
  final int curtidas;
  final int paginaInicial;
  final int paginaFinal;

  Postagem({
    required this.id,
    required this.texto,
    required this.leitor,
    required this.livro,
    required this.data,
    required this.curtido,
    required this.curtidas,
    required this.paginaInicial,
    required this.paginaFinal,
  });

  static Postagem fromJson(Map<String, dynamic> json) {
    return Postagem(
      id: json['id'],
      texto: json['texto'],
      leitor: Leitor.fromJson(json['leitor']),
      livro: Livro.fromJson(json['livro']),
      data: DateTime.parse(json['data_hora']),
      curtido: json['curtido'],
      curtidas: json['curtidas'],
      paginaInicial: json['pagina_inicial'],
      paginaFinal: json['pagina_final'],
    );
  }

  Map<String, dynamic> toSql() {
    return { 'id': this.id, 'texto': this.texto, 'leitor': this.leitor.id, 'livro': this.livro.id, 'data': this.data, 'curtido': this.curtido, 'curtidas': this.curtidas, 'paginaInicial': this.paginaInicial, 'paginaFinal': this.paginaFinal }
  }
}
