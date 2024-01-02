//Aspect ratio, bir widget'ın genişlik ve yükseklik arasındaki oranı ifade eder.
import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatioExample"),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
