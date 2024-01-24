import 'package:flutter/material.dart';
//Yani, bir widget'ın minimum ve maksimum boyutlarını belirleyerek içeriği
//bu sınırlar içinde kalmaya zorlar.

class ConstrainedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ConstrainedBox(
            //içeriğinin belirli boyut sınırları içinde kalmasını sağlar.
            constraints: //constraints parametresi, içeriğin minimum ve maksimum boyutlarını belirler.
                BoxConstraints(
              minHeight: 50,
              maxHeight: 150,
              maxWidth: 50,
            ),
            child: Container(
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
