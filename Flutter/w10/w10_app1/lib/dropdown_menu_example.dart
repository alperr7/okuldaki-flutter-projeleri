//DropdownMenu

import 'package:flutter/material.dart';

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  Map<String, Color> colors = {
    "Kırmızı": Colors.red,
    "Sarı": Colors.yellow,
    "Mavi": Colors.blue,
    "Siyah": Colors.black,
    "Beyaz": Colors.white
  };
  Color selectedColor = Colors
      .white; //değişkenleri, kullanıcının seçtiği rengin ve renk adının saklanması
  // için kullanılır. Başlangıçta "Beyaz" renk seçilmiştir.
  String selectedItem = "Beyaz";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropdownMenuExample")),
      body: Container(
        color: colors[selectedItem],
        child: Center(
          child: DropdownButton<String>(
            //widget'ı, bir açılır menü oluşturur
            value: selectedItem,
            items: colors.keys.map(
              (String item) {
                return DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(fontSize: 36),
                    ));
              },
            ).toList(),
            onChanged: (item) {
              setState(() {
                selectedItem = item!;
              });
            },
          ),
        ),
      ),
    );
  }
}
