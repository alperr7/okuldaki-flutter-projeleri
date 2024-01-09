import 'package:flutter/material.dart';

class Navigasyon1MainPage extends StatelessWidget {
  int userId = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              var responsedData =
                  await Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Navigasyon1Page1(userId);
                },
              ));

              print(responsedData.toString() + ": Retrived");

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(responsedData)));
            },
            child: Text("Goto page 1")),
      ),
    );
  }
}

class Navigasyon1Page1 extends StatelessWidget {
  int userId = 15;
  Navigasyon1Page1(this.userId);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Page 1, userid = $userId",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context, "Kullanıcı bligileri güncellendi");
            },
            child: Text("<<Back"),
          ),
        ),
      ),
    );
  }
}
