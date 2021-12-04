import 'package:flutter/material.dart';
import 'login.dart';

class ListaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.attach_file),
        actions: [GestureDetector(
            child: Icon(Icons.home)

        )
        ],
        title: Text("Bloco de notas"),
      ),
      body: ListView.builder(
          itemCount:15,
          itemBuilder: (ctxt, index) {
            return ListTile(
              leading: Icon(Icons.comment),
              title: Text("Notas ${index}"),
              subtitle: Text("Escreva alguma coisa..."),
              trailing: Icon(Icons.attach_file),
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.border_color_outlined),
        onPressed: (){
          Navigator.pushNamed(context, '/cadastro');
        }
      ),
    );
  }
}