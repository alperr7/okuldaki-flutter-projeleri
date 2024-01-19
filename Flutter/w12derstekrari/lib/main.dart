import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preferences_example.dart';

bool isAuth = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // veritabanı bağlantısını garantilemek için yazarız

  var db = await SharedPreferences.getInstance();

  isAuth = db.getBool("isAuth") ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: isAuth ? HomePage() : LoginPage(),
    );
  }
}
