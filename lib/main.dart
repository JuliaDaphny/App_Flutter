import 'package:flutter/material.dart';
import 'package:meuapp/lista.dart';
import 'package:meuapp/login.dart';
import 'package:meuapp/cadastro.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey
        ),
      //home: Scaffold(
        //appBar: AppBar(
        //title: const Text('Anotações'),
        //),
      //),
      routes: <String, WidgetBuilder>{
        '/': (context) => LoginScreen(),
        '/lista': (context) => ListaScreen(),
        '/cadastro': (context) => CadastroScreen(),
      },
    );
  }
}