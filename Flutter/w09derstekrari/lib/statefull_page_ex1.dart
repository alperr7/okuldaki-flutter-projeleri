import 'package:flutter/material.dart';

class MatematikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sayi1 = 0;
    double sayi2 = 0;
    double sonuc = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFull"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              child: TextField(
                onChanged: (value) {
                  value = (value == "") ? "0" : value;
                  sayi1 = double.parse(value);
                },
              ),
            ),
            SizedBox(width: 25),
            SizedBox(
              width: 50,
              child: TextField(
                onChanged: (value) {
                  value = (value == "") ? "0" : value;
                  sayi2 = double.parse(value);
                },
              ),
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  sonuc = sayi1 + sayi2;
                  print(sonuc);
                },
                child: Text("Hesapla"),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Text(sonuc.toString()),
          ],
        ),
      ),
    );
  }
}
