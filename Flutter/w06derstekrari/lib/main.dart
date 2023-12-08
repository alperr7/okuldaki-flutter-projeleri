import 'package:flutter/material.dart';

void main() {
  runApp(Giris()); // aldığı methodun içindeki build metodu tetikler
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
          backgroundColor: Colors.blue,
        ),
        body: Text(
          "Loginekranı",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

class Giris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Giris"),
          backgroundColor: Colors.red,
        ),
        body: Giris(),
      ),
    );
  }
}
