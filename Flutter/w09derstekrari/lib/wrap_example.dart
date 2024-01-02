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
        spacing: 15,
        runSpacing: 25,
        alignment: WrapAlignment.spaceEvenly,
        children: [
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
