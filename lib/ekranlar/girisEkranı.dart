import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ekranlar/Anasayfa.dart';
import 'package:untitled/ekranlar/KayitOl.dart';
import 'package:untitled/service/firebase.dart';

class girisEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> fb = Firebase.initializeApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
          future: fb,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text("beklenmeyen bir hata oluştu"),
              );
            } else if (snapshot.hasData) {
              return Scaffold(
                body: govde(),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

class govde extends StatefulWidget {
  govde({Key? key}) : super(key: key);
  @override
  State<govde> createState() => _govdeState();
}

class _govdeState extends State<govde> {
  TextEditingController email = TextEditingController();
  TextEditingController sifre = TextEditingController();
  firebase _fire = firebase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent, //fromRGBO(255, 209, 70, 1.0),
      appBar: AppBar(
          title: Text(
            "Yurd'um",
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.yellowAccent, Colors.lightBlueAccent],
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.yellowAccent, Colors.amber],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Icon(
                  Icons.apartment_rounded,
                  color: Colors.blueGrey,
                  size: 150.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(labelText: "email"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: sifre,
                    decoration: InputDecoration(labelText: "Şifre"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 40,
                    width: 80,
                    child: FloatingActionButton.extended(
                      label: Text("Giriş"),
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        _fire
                            .girisYap(email.text, sifre.text)
                            .then(
                              (value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => anasayfa()),
                              ),
                            )
                            .onError(
                              (error, stackTrace) => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Kayıt Tamamlandı'),
                                  content: const Text(
                                      'Giriş ekranına dönüp giriş yapabilirsiniz'),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      girisEkrani()));
                                        },
                                        child: Text('Giriş Ekranı')),
                                  ],
                                ),
                              ),
                            );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 80,
                    child: FloatingActionButton.extended(
                      label: Text("Kaydol"),
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => KayitOl()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
