import 'package:flutter/material.dart';

class OngeneratedRouteMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NamedRouteMain", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.deepPurple,
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/OngeneratedRoutePage1");
                },
                child: Text("Goto page1"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/OngeneratedRoutePage2");
                },
                child: Text("Goto page2"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.canPop(context);
                },
                child: Text("Back"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}

class OngeneratedRoutePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "OngeneratedRoutePage1",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Goto OngeneratedRouteMain"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
          ),
        ));
  }
}

class OngeneratedRoutePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
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
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
      ),
    );
  }
}
