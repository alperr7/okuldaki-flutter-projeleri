import 'package:flutter/material.dart';
import 'package:w10derstekrari/assets_example.dart';
import 'package:w10derstekrari/card_example.dart';
import 'package:w10derstekrari/context_example.dart';
import 'package:w10derstekrari/dopdown_menu_example.dart';
import 'package:w10derstekrari/popup_menu_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter w10',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CardExample(),
    );
  }
}
