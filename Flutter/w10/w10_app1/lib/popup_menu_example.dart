//Popup menu

import 'package:flutter/material.dart';

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  Map<String, Color> colors = {
    "Kırmızı": Colors.red,
    "Sarı": Colors.yellow,
    "Mavi": Colors.blue,
    "Siyah": Colors.black,
    "Beyaz": Colors.white
  };
  Color selectedColor = Colors.white;
  String selectedItem = "Beyaz";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuExample"),
        actions: [
          PopupMenuButton(
            //kullanıcının bir renk seçebileceği ve seçilen rengin arka plan rengini güncellediği bir uygulamayı temsil eder
            onSelected: (_selectedItem) {
              setState(() {
                selectedItem = _selectedItem;
              });
            },
            itemBuilder: (context) {
              return colors.keys.map((key) {
                return PopupMenuItem(
                    value: key,
                    child: Text(key,
                        style: TextStyle(color: colors[selectedItem])));
              }).toList();
            },
          ),
          ElevatedButton(onPressed: () {}, child: Text("Kaydet"))
        ],
      ),
      body: Container(
        color: colors[selectedItem],
      ),
    );
  }
}
