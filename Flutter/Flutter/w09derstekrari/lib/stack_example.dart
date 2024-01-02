import 'package:flutter/material.dart';
//Stack Widget Örtüşen elemanlar için kullanılır

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackExample"),
      ),
      body: Center(
        child: Stack(
          children: [
            Image.network(
              "https://media.licdn.com/dms/image/D4D03AQHiCg_YnqC4Gw/profile-displayphoto-shrink_800_800/0/1701495607424?e=1708560000&v=beta&t=DbfVyItjZErC0E5JVajNnWAcL7Ap3xmz4svvHwauvn8",
              width: 250,
              height: 350,
              fit: BoxFit.cover,
            ),
            Positioned(left: 0, top: 150, child: Text("User Name: Alperr77")),
            Positioned(top: 0, right: 0, child: Text("Address:Alperr77")),
            Positioned(
                bottom: 5,
                right: 5,
                child: ElevatedButton(onPressed: () {}, child: Text("Visit"))),
          ],
        ),
      ),
    );
  }
}
