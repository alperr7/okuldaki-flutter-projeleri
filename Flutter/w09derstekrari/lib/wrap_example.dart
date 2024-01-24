//Wrap bir satırı doldurduktan sonra diğer satıra
//geçmelerini sağlayan bir düzenleme widget'ıdır

import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapExample"),
      ),
      body: Wrap(
        //Bu widget, içine yerleştirilen çocuk widget'ları saran bir yapı oluşturur.
        spacing: 15,
        runSpacing:
            25, // parametreleri, sarmalanmış widget'lar arasındaki yatay ve dikey boşlukları belirler.
        alignment: WrapAlignment.spaceEvenly,
        children: [
          Chip(
              avatar: CircleAvatar(
                //widget'ı, bir etiket ve bir avatar içeren bir materyal tasarım çipini temsil eder. avatar parametresi,
                //bir dairenin içinde bir metni içeren bir CircleAvatar widget'ıdır.
                //label parametresi, çipin ana metni olan bir Text widget'ını belirtir.
                radius: 65,
                backgroundColor: Colors.red,
                child: Text("A1"),
              ),
              label: Text("Ch1")),
          Chip(
              avatar: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red,
                child: Text("A1"),
              ),
              label: Text("Ch1")),
          Chip(
              avatar: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red,
                child: Text("A1"),
              ),
              label: Text("Ch1")),
          Chip(
              avatar: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red,
                child: Text("A1"),
              ),
              label: Text("Ch1")),
          Chip(
              avatar: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red,
                child: Text("A1"),
              ),
              label: Text("Ch1")),
          Chip(
              avatar: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red,
                child: Text("A1"),
              ),
              label: Text("Ch1")),
          Chip(
              avatar: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red,
                child: Text("A1"),
              ),
              label: Text("Ch1")),
          Chip(
              avatar: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red,
                child: Text("A1"),
              ),
              label: Text("Ch1")),
        ],
      ),
    );
  }
}
