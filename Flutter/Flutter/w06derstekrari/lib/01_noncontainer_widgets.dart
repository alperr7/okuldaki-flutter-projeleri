import 'package:flutter/material.dart';

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("non container widgets"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Merhaba", style: TextStyle(fontSize: 18)),
            Text("Merhaba2", style: TextStyle(fontSize: 18, color: Colors.red)),
            Image.network(
              color: Colors.red,
              height: 100,
              width: 100,
              "https://www.facebook.com/Gvnlik5188/?locale=tr_TR",
            ),
            ElevatedButton(onPressed: () {}, child: Text("Tıklayınız")),
            SizedBox(height: 50),
            Switch(value: true, onChanged: (value) {}),
            Checkbox(value: false, onChanged: (value) {}),
            Radio(value: true, groupValue: 1, onChanged: (value) {}),
            Slider(value: .5, onChanged: (value) {}),
            TextField(),
            Divider(),
            SizedBox(),
          ],
        ), //Text non container bir widgetstır

        //child olmayan tüm widgetsler non containerdır
        //child 1 widget alır children ise widget dizisi alır
      ),
    );
  }
}
