import 'package:flutter/material.dart';

class Sayfa1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("non container widgets"),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            Text("Merhaba", style: TextStyle(fontSize: 18)),
            Text("Merhaba2", style: TextStyle(fontSize: 18, color: Colors.red)),
            Image.network(
                color: Colors.red,
                height: 100,
                width: 100,
                "https://www.biruni.edu.tr/images/logo.svg"),
            ElevatedButton(onPressed: () {}, child: Text("Tıklayınız")),
            SizedBox(
              height: 50,
            ),
            Switch(
                value: true,
                onChanged:
                    (value) {}), //Anahtarın mevcut durumu (true veya false).
            Checkbox(
                value: false,
                onChanged:
                    (value) {}), //Onay kutusunun mevcut durumu (true veya false).
            Radio(
                value: true,
                groupValue: 1,
                onChanged: (value) {}), //yuvarlak tik koyma
            Slider(value: .5, onChanged: (value) {}), //Kaydırıcı koyma
            // Kaydırıcının başlangıç değeri (double türünde). Bu örnekte 0.5 olarak ayarlanmış.

            TextField(), //Metin girişi için bir alan oluşturan bir widget.
            Divider(), //Arayüzde bir çizgi çizmek için kullanılan bir widget.
          ],
        ),
      ),
    );
  }
}


          
         //Text non container bir widgetstır

        //child olmayan tüm widgetsler non containerdır
        //child 1 widget alır children ise widget dizisi alır

