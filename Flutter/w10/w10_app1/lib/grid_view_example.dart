//Grid Example

import 'package:flutter/material.dart';
import 'package:w10_app1/Student.dart';

class GridViewExampleForStudent extends StatelessWidget {
  const GridViewExampleForStudent({super.key});

  @override
  Widget build(BuildContext context) {
    var data = getStudentList(100);

    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text("Card")),
        body: Container(
            child: GridView.builder(
          // widget'ını kullanarak bir liste öğelerini düzenleyen bir ekran tasarımını oluşturur.
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //parametresi, SliverGridDelegateWithFixedCrossAxisCount sınıfından bir örneği alır.
              //Bu, bir sütunda kaç öğe olacağını,
              //sütunlar arasındaki yatay boşluğu (crossAxisSpacing),
              //satırlar arasındaki dikey boşluğu (mainAxisSpacing) ve
              //öğelerin en-boy oranını (childAspectRatio) belirler.
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 5 / 2.4),
          // scrollDirection: Axis.horizontal,
          itemCount: data
              .length, // parametresi, GridView içinde oluşturulacak öğe sayısını belirtir
          padding: EdgeInsets.all(2),
          itemBuilder: (context, index) {
            return getCard(data[index]);
          },
        )));
  }

  Card getCard(Student student) {
    return Card(
      elevation: 8.0, // özelliği, kartın gölge efektini belirler.
      shape: //özelliği, kartın kenarlarını şekillendirmek için kullanılır.
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  10.0)), //ullanılarak kenarları yuvarlatılmış bir dikdörtgen oluşturulur.
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ListTile(
          //kartın üst kısmında bir başlık, alt başlık ve ikon içeren bir satır oluşturur
          leading: CircleAvatar(
              //zelliği, solda bir daire içinde resim veya ikon eklemek için kullanılır
              backgroundImage: AssetImage('assets/images/image1.jpg')),
          title: Text(student.fullName),
          subtitle: Text(student.phone),
          trailing: Icon(Icons
              .summarize), //özelliği, sağ tarafta bir ikon eklemek için kullanılır.
        ),
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
          child: Text("asdlsakdjlsakdjlsad sadlhaskd sad sad"),
        ),
        ButtonBar(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Detay Gör")),
            ElevatedButton(onPressed: () {}, child: Text("İletişim Kur"))
          ],
        )
      ]),
    );
  }

  List<Student> getStudentList(int count) {
    var list = <Student>[];
    for (var i = 0; i < count; i++) {
      list.add(Student(fullName: "$i. Student", phone: "$i. phone"));
    }

    return list;
  }
}
