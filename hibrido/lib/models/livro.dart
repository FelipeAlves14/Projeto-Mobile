class Livro {
  final int id;
  final String titulo;
  final String autor;
  final String sinopse;
  final int nPaginas;
  final String capa;

  Livro({
    required this.id,
    required this.titulo,
    required this.autor,
    required this.sinopse,
    required this.nPaginas,
    required this.capa,
  });

  static Livro fromJson(Map<String, dynamic> json) {
    return Livro(
      id: json['id'],
      titulo: json['titulo'],
      autor: json['autor']['nome'],
      sinopse: json['sinopse'],
      nPaginas: json['n_paginas'],
      capa: json['capa'],
    );
  }

  Map<String, dynamic> toSql() {
    return { 'id': this.id, 'titulo': this.titulo, 'autor': this.autor, 'sinopse': this.sinopse, 'nPaginas': this.nPaginas, 'capa': this.capa }
  }
}
