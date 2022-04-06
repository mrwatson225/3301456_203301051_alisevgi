import 'package:flutter/material.dart';
import 'package:untitled/ekranlar/Anasayfa.dart';
import 'package:untitled/ekranlar/KayitOl.dart';

class girisEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amberAccent, //fromRGBO(255, 209, 70, 1.0),
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Center(
              child: Container(
                child: Text(
                  "Yurd'um",
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.apartment_rounded,
                      color: Colors.blueGrey,
                      size: 150.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "TCKN"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "Şifre"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top :20),
                      child: SizedBox(
                        height: 40,
                        width: 80,
                      child: FloatingActionButton.extended(
                            label: Text("Giriş"),
                            backgroundColor: Colors.blueGrey,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => anasayfa()));
                            },
                          ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: SizedBox(height: 40,width: 80,
                        child: FloatingActionButton.extended(
                            label: Text("Kaydol"),
                            backgroundColor: Colors.blueGrey,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KayitOl()));
                            },
                          ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
