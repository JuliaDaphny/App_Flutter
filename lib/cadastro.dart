import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';

class CadastroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crie sua conta"),
      ),
      body: Column(
        children: [
          TextField(
            textCapitalization: TextCapitalization.words,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(labelText: "Nome"),
          ),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(labelText: "Telefone"),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "CPF"),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: "E-mail"),
          ),
          ElevatedButton(
            child: Text('Criar'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              textStyle: TextStyle(fontSize: 14),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/lista');
            },
          ),
        ]
      ),
    );
  }
}
