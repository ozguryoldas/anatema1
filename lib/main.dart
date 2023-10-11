import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mail="levent@gmail.com",sifre="1234",uyari="";
  TextEditingController KullaniciAdi=TextEditingController();
  TextEditingController Sifre=TextEditingController();
  void  GirisKontrol() {
    setState(() {
      if (KullaniciAdi.text == mail && Sifre.text == sifre) {
        print("Kullanıcı Adı ve Şifre Doğru.");
      }
      else {
        uyari = "Uyarı: Kullanıcı Adı ve Şifre Hatalı!";
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Dizi ve Değişken"), centerTitle: true,),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(Icons.person, size: 80,),
                SizedBox(height: 20,),
                TextField(
                  controller: KullaniciAdi,
                  decoration: InputDecoration(
                      labelText: "E-Mail", icon: Icon(Icons.email)),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: Sifre,
                  decoration: InputDecoration(
                      labelText: "Şifre", icon: Icon(Icons.password)),
                  obscureText: true,),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  GirisKontrol();
                }, child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Giriş Yap"),
                )),
                SizedBox(height: 20,),
                IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
                SizedBox(height: 20,),
                Text("Hala üye değil misiniz?"),
                SizedBox(height: 20,),
                TextButton(onPressed: () {
                }, child: Text("Üye Ol")),
                SizedBox(height: 20,),
                Text("$uyari", style: TextStyle(color: Colors.red),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

