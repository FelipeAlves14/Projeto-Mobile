import 'package:flutter/material.dart';
import 'package:pratiler_mobile/views/atualizar_leitura_view.dart';
import 'package:pratiler_mobile/views/feed_view.dart';
import 'package:pratiler_mobile/views/livros_populares_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/livros_populares': (context) => LivrosPopularesPage(),
        '/atualizar_leitura': (context) => AtualizarLeituraPage(),
        '/': (context) => FeedPage(),
      },
    );
  }
}
