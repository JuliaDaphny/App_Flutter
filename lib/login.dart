import 'package:flutter/material.dart';
import 'lista.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text(
                "Anotações",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45.0),
              ),
              onTap: () => print("click title"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail", border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Senha", border: OutlineInputBorder()
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Entrar'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
