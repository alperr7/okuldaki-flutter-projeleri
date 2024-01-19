//Flutter'da "shared_preferences", uygulama içinde verileri kalıcı olarak saklamak ve
//paylaşmak için kullanılan bir pakettir

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _userFiledController = TextEditingController();
  var _passwordFiledController = TextEditingController();

  bool isRememberMe = false;

  _loadCredential() async {
    // verileri okuma
    //Şifre ve kullanıcı adı gibi gizli bilgileri  kimlikSakla
    var db = await SharedPreferences.getInstance();

    setState(() {
      _userFiledController.text = db.getString("usarname") ?? "";
      // ?? ifade null sa sağına ne koyarsan onu döndürür

      _passwordFiledController.text = db.getString("password") ?? "";

      isRememberMe = db.getBool("isRememberMe") ?? false;
    });
  }

  _saveCredential() async {
    //Şifre ve kullanıcı adı gibi gizli bilgileri  kimlikSakla
    var db = await SharedPreferences.getInstance();

    if (isRememberMe) {
      await db.setString("username", _userFiledController.text);
      await db.setString("password", _passwordFiledController.text);
    } else {
      await db.remove("username");
      await db.remove("password");
    }
    await db.setBool("isRememberMe", isRememberMe);
  }

  @override // widge yüklenirken ilk işleri burda yaparız
  void initState() {
    super.initState();

    _loadCredential();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Pref.", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _userFiledController,
              decoration: InputDecoration(labelText: "User Name"),
            ),
            TextField(
              controller: _passwordFiledController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            Row(
              children: [
                Checkbox(
                  value: isRememberMe,
                  onChanged: (value) {
                    isRememberMe = value!;
                    setState(() {});
                  },
                ),
                Text("Remember me"),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
