//Card Example

import 'package:flutter/material.dart';
import 'package:w10derstekrari/Student.dart';

class GridViewExampleForStudent extends StatelessWidget {
  const GridViewExampleForStudent({super.key});

  @override
  Widget build(BuildContext context) {
    var data = getStudentList(100);

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        scrollDirection: Axis.horizontal, //soldan sağa çevirme
        itemCount: data.length,
        padding: EdgeInsets.all(2),
        itemBuilder: (context, index) {
          return getCard(data[index]);
        },
      )),
    );
  }

  Card getCard(Student student) {
    return Card(
      elevation: 8.0, //yükseklik demektir
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0)), //şekli dikdörtgensel ve yuvarlatılmış olsun demek
      child: SizedBox(
        width: 150,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              //genellikle bir liste içindeki öğeleri temsil etmek için kullanılan bir widget'tir
              leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/pp.jpg")), //CircleAvatar yuvarlak resim demek
              title: Text(student.fullName),
              subtitle:
                  Text(student.phoneNumber), //daha küçük yazıyla not yazma
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

List<Student> getStudentList(int count) {
  var list = <Student>[];
  for (var i = 0; i < count; i++) {
    list.add(Student(fullName: "$i.Student", phoneNumber: "$i.phone"));
  }
  return list;
}
