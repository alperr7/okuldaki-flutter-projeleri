import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp kullanmak, uygulamanızın temel tasarımının yanı sıra materyal tasarımına uygun animasyonları, efektleri ve geçişleri kolayca entegre etmenizi sağlar.
    return MaterialApp(
      //Scaffold kullanmak, uygulama sayfalarınızın temel yapısını oluşturmanızı sağlar ve materyal tasarımının temel öğelerini kullanarak uygulamanızın kullanıcı arayüzünü hızlı ve tutarlı bir şekilde oluşturmanıza yardımcı olur.
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            borderRadius: // kutunun köşe yarıçapını belirtir.
                BorderRadius.circular(
                    20), //köşeleri yuvarlak olan bir kutu oluşturur. Yarıçap değeri arttıkça köşeler daha fazla yuvarlanır.
            color: Colors.amber,
          ),
          padding: EdgeInsets.all(10),
//padding, içerideki widget'ların (bu durumda Text widget'ı) kenarlarından uzaklık ekler. EdgeInsets.all(10) ifadesi, tüm kenarlara 10 birimlik bir iç boşluk ekler.
          margin: EdgeInsets.only(left: 50, top: 75),
//Container'ın kendisi üzerindeki dış boşluğu belirtir. EdgeInsets.only(left: 50, top: 75) ifadesi, sadece sol ve üst kenarlarda belirtilen miktarlarda dış boşluk bırakır.
          child: Text(
            "Merhaba",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
