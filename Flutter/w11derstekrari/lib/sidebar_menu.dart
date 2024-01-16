import 'package:flutter/material.dart';

import 'package:w11derstekrari/anamenu.dart';

class SideBarMenuPageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenu(),
      appBar: AppBar(
        title: Text(
          "SideBarMenuPageMain",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenu(),
      appBar: AppBar(
        title: Text("SideBarMenuPageMain"),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenu(),
      appBar: AppBar(
        title: Text("SideBarMenuPageMain"),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenu(),
      appBar: AppBar(
        title: Text("SideBarMenuPageMain"),
      ),
    );
  }
}
