class Leitor {
  final int id;
  final String username;

  Leitor({required this.id, required this.username});

  static Leitor fromJson(Map<String, dynamic> json) {
    return Leitor(id: json['id'], username: json['username']);
  }

  Map<String, dynamic> toSql() {
    return { 'id': this.id, 'username': this.username }
  }
}
