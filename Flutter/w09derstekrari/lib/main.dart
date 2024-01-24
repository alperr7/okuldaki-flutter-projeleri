import 'package:flutter/material.dart';
import 'package:w09derstekrari/aspect_ratio.dart';
import 'package:w09derstekrari/constrainedbox_example.dart';
import 'package:w09derstekrari/flex_example.dart';
import 'package:w09derstekrari/registation.dart';
import 'package:w09derstekrari/stack_example.dart';
import 'package:w09derstekrari/statefull_page_ex1.dart';
import 'package:w09derstekrari/wrap_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Week 9",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors
                .deepPurple), //fonksiyonu, belirli bir başlangıç (seed) rengi üzerinden
        //bir renk şemasını oluşturmak için kullanılır.
        useMaterial3:
            true, //Bu özellik, Material 3 tasarımının kullanılıp kullanılmayacağını belirtir
      ),
      home: WrapExample(),
    );
  }
}
