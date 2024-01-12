import 'package:flutter/material.dart';

class NamedRouteMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "NamedRouteMain",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/NamedRoutePage1");
                },
                child: Text("Go to page 1"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/NamedRoutePage2");
                },
                child: Text("Go to page 2"),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple)),
              ),
            ],
          ),
        ));
  }
}

class NamedRoutePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "NamedRoute1",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "NamedRoutePage1");
            },
            child: Text(
              "Go to page 1",
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white)),
          ),
        ));
  }
}

class NamedRoutePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "NamedRoute2",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "NamedRoutePage2");
            },
            child: Text(
              "Go to page 2",
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
            ),
          ),
        ));
  }
}
