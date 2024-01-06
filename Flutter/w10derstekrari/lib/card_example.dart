//Card Example

import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blue,
      ),
      body: Card(
        elevation: 4.0, //yükseklik demektir
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10.0)), //şekli dikdörtgensel ve yuvarlatılmış olsun demek
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/pp.jpg")), //CircleAvatar yuvarlak resim demek
            ),
          ],
        ),
      ),
    );
  }
}
