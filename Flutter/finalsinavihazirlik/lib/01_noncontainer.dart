import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sayfa1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("non container widgets"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Text("Merhaba", style: TextStyle(fontSize: 18)),
            Text("Merhaba2", style: TextStyle(fontSize: 18, color: Colors.red)),
            Image.network(
              color: Colors.red,
              height: 100,
              width: 100,
              "https://www.biruni.edu.tr/images/logo.svg",
            ),
            ElevatedButton(onPressed: () {}, child: Text("Tıklayınız")),
            SizedBox(height: 50),
            Switch(value: true, onChanged: (value) {}),
            Checkbox(value: false, onChanged: (value) {}),
            Radio(value: .5, groupValue: 1, onChanged: (value) {}),
            Slider(value: .5, onChanged: (value) {}),
            TextField(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
