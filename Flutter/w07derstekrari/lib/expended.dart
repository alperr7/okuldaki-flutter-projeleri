import 'package:flutter/material.dart';

class MyAppExpendedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Profile",
      theme: ThemeData(primaryColor: Colors.blue),
      home: ExpandedExamplePage(),
    );
  }
}

class ExpandedExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Example"),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        Text("Without Expanded", style: TextStyle(fontSize: 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, //çocuk widget'lar arasında eşit boşluk bırakarak düzenleme yapar
          children: [
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.yellow),
            Container(width: 100, height: 100, color: Colors.brown),
          ],
        ),
        SizedBox(height: 75),
        Text("With Expended", style: TextStyle(fontSize: 20)),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                //Bir widget'ı belirli bir oranda genişletmeye (expand) olanak tanır.
                flex: 1, // özelliği, widget'ın genişleme oranını belirler
                child: Container(width: 100, height: 100, color: Colors.red)),
            Expanded(
                flex: 2,
                child:
                    Container(width: 100, height: 100, color: Colors.yellow)),
            Expanded(
                flex: 6,
                child: Container(width: 100, height: 100, color: Colors.brown)),
          ],
        ),
      ]),
    );
  }
}
