import 'package:flutter/material.dart';

class Navigasyon1MainPage extends StatelessWidget {
  int userId = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              var responsedData =
                  await Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Navigasyon1Page1(userId);
                },
              ));
              print(responsedData.toString() + ": Retricved");
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(responsedData)));
            },
            child: Text("Goto page 1 ")),
      ),
    );
  }
}

class Navigasyon1Page1 extends StatelessWidget {
  Navigasyon1Page1(this.userId);
  int userId;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:checkStatus,

      child: Scaffold(
        appBar: AppBar(title: Text("Page1,userId = $userId")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context, "Kullanıcı bilgileri güncellendi");
            },
            child: Text("<<<Back"),),
        ),
      ),
    );
  }

Future<bool> CheckStatus(BuildContext context)async{
  var shouldPop = await showDialog(
    context: context, builder: (context))
}

}
