import 'package:flutter/material.dart';
import 'package:pratiler_mobile/views/cabecalho.dart';
import 'package:pratiler_mobile/views/rodape.dart';

class AtualizarLeituraPage extends StatelessWidget {
  const AtualizarLeituraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF9F8FF),
        body: SafeArea(
          child: Column(
            children: [
              Cabecalho(),

              Expanded(
                child: Center(
                  child: Card(
                    color: Color(0xFFFEFEFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'Atualizar Leitura',
                              style: TextStyle(
                                color: Color(0xFF3D3569),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Text(
                                  'Livro: ',
                                  style: TextStyle(color: Color(0xFF3D3569)),
                                ),
                                Expanded(
                                  child: DropdownButtonFormField<String>(
                                    value: null,
                                    hint: Text('Selecionar livro'),
                                    items: [],
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'Página Inicial: ',
                                  style: TextStyle(color: Color(0xFF3D3569)),
                                ),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: 100,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Ex: 1',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'Página Final: ',
                                  style: TextStyle(color: Color(0xFF3D3569)),
                                ),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: 100,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Ex: 10',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                hintText: 'Comentário',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF3D3569),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Postar',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Rodape(selecionado: "postar"),
            ],
          ),
        ),
      ),
    );
  }
}
