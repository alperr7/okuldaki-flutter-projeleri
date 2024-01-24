//Containers and Design Widgets
//Container, Center , Column,Row,InkWell-> dokunma özelliği ekler

import 'package:flutter/material.dart';

class MyAppUserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "User Profile",
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: //gradient (geçiş) arka plan
                LinearGradient(
          colors: [
            Colors.yellow,
            Colors.blue
          ], //gradient'in başlangıcından bitişine doğru geçiş yapacak iki renk belirlenmiştir
          begin: Alignment
              .topLeft, //Alignment sınıfı, Flutter'da bir noktanın veya bir vektörün belirli bir hedefe veya konuma göre nasıl hizalanacağını belirlemek için kullanılır
          end: Alignment.bottomRight,
        )),

        //Column widget'ını kullanarak dikey bir düzen içindeki çocuk widget'ları hizalamak için mainAxisAlignment özelliğini kullanmaktadır.
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //ekranın ortasına almak için
            children: [
              //genellikle kullanıcı profilleri veya resimleri gibi yuvarlak şekilde görüntülenmesi gereken resimleri temsil etmek için kullanılan bir widget'tır.
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/D4D03AQHiCg_YnqC4Gw/profile-displayphoto-shrink_800_800/0/1701495607424?e=1708560000&v=beta&t=DbfVyItjZErC0E5JVajNnWAcL7Ap3xmz4svvHwauvn8"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("User Name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Text("Short Bio",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Row(
                //çocuk widget'ların yatay eksendeki hizalamasını belirler
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, //çocuk widget'ları arasında eşit boşluk bırakarak düzenleme yapar
                children: [
                  InkWell(
                    //InkWell, dokunma (tıklama) işlemlerini algılamak için kullanılan bir widget'tır
                    onTap: () {
                      print("Message icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.message,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Message",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Settings icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("People icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.people,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "People",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
