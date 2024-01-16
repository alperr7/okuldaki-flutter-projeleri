import 'package:flutter/material.dart';
import 'package:w11derstekrari/namedroute.dart';
import 'package:w11derstekrari/navigasyon1.dart';
import 'package:w11derstekrari/ongenerated_root.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "w11 app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
          ),
          home:OngeneratedRouteMain(),
          onGenerateRoute: _onGenerateRoute(),

      //named route
      // initialRoute:
      //     "/", //uygulamanızın başlangıç ​​sayfasını belirlemek için kullanılan bir özelliktir
      // routes: {
      //   "/": (context) => NamedRouteMain(),
      //   "/NamedRoutePage1": (context) => NamedRoutePage1(),
      //   "/NamedRoutePage2": (context) => NamedRoutePage2(),
      // },
    );
  }
  
Route<dynamic>? _onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case "/": MaterialPageRoute(builder: (context) => OngeneratedRouteMain())
      break;
    default:
  }
}
