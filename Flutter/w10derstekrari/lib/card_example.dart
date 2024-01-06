//Card Example

import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blue,
      ),
      body: Card(
        elevation: 8.0, //yükseklik demektir
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10.0)), //şekli dikdörtgensel ve yuvarlatılmış olsun demek
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              //genellikle bir liste içindeki öğeleri temsil etmek için kullanılan bir widget'tir
              leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/pp.jpg")), //CircleAvatar yuvarlak resim demek
              title: Text("Profil Resmi"),
              subtitle:
                  Text("hackercamp etkinliği"), //daha küçük yazıyla not yazma
              trailing: Icon(Icons.summarize), // Sağda görünen ikon
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: Text("asflöaslfö ls lasföaslföaslf lsaföalsf asö f"),
            ),
            ButtonBar(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Detay Gör")),
                ElevatedButton(onPressed: () {}, child: Text("İletişim Kur"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
