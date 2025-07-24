class Leitor {
  final int id;
  final String username;
  final String nome;
  final String email;
  final String senha;
  final String? bio;
  final String? fotoUrl;

  Leitor({
    required this.id,
    required this.username,
    required this.nome,
    required this.email,
    required this.senha,
    this.bio,
    this.fotoUrl,
  });
}
