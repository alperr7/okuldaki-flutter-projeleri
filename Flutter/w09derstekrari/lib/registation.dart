import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});
  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = "";
  String _email = "";
  String _password = "";

  String _formStatus =
      ""; //Formun genel durumunu belirten bir String değişkenidir

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key:
              _formKey, //key özelliği, formun durumunu takip etmek için kullanılır.
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    _formStatus), //Genel form durumunu kullanıcıya bildirmek için kullanılabilir.
                TextFormField(
                  decoration: InputDecoration(
                      labelText:
                          "Adı"), //decoration özelliği, metin giriş alanının nasıl görüneceğini belirtir.
                  //Kullanıcının girdiği değeri doğrulamak için kullanılır. Eğer giriş boş ise, "Adı boş olamaz!" şeklinde bir hata mesajı döndürülür
                  validator: (value) {
                    if (value == null || value.trim() == "") {
                      //value.trim() =bir metin dizesinin başındaki ve sonundaki boşlukları temizlemek için kullanılır.
                      return "Adı boş olamaz!";
                    }
                  },
                  //Form kaydedildiğinde (gönderildiğinde), bu metot çağrılır. _name değişkenine, kullanıcının girdiği adı atar.
                  onSaved: (newValue) {
                    _name = newValue!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.trim() == "") {
                      return "Email boş olamaz!";
                    }
                  },
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Şifre"),
                  validator: (value) {
                    if (value == null || value.trim() == "") {
                      return "Şifre boş olamaz!";
                    }
                  },
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                ),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //Formun geçerli olup olmadığını kontrol eder
                        _formKey.currentState!
                            .save(); //Form elemanlarındaki değerleri kaydederek, onSaved metodunu tetikler

                        // DB ye kaydetme kodu burada yazılır...
                        // _name = "";
                        // _email = "";
                        // _password = "";
                        //
                        //

                        setState(() {
                          _formStatus =
                              "Kayıt başarılı"; //: Eğer form geçerliyse, _formStatus değişkenini "Kayıt başarılı" olarak güncelle
                        });
                      } else {
                        setState(() {
                          _formStatus =
                              "Hata"; //Eğer form geçerli değilse, _formStatus değişkenini "Hata" olarak günceller.
                        });
                      }
                    },
                    child: Text("Kaydet"))
              ],
            ),
          )),
    );
  }
}
