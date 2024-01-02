//Assets example

import 'package:flutter/material.dart';

class AssetsExample extends StatelessWidget {
  const AssetsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/pp.jpg',
                width: 150,
                height: 100,
              ),
              SizedBox(width: 15),
              Image.asset(
                'assets/images/pp2.jpg',
                width: 150,
                height: 100,
              ),
            ]),
            SizedBox(width: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15),
                Image.asset(
                  'assets/images/pp4.jpg',
                  width: 150,
                  height: 100,
                ),
                Image.asset(
                  'assets/images/pp3.jpg',
                  width: 150,
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
