import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled/ekranlar/girisEkranı.dart';
import 'package:untitled/service/firebase.dart';

class KayitOl extends StatelessWidget {
  TextEditingController tckn = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController sifre = TextEditingController();

  TextEditingController adivesoyadi = TextEditingController();
  firebase _fire = firebase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 95),
              child: const Text(
                " Kayıt ol",
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 120, right: 30, left: 30),
            child: Column(
              children: [
                TextFormField(
                  controller: adivesoyadi,
                  decoration: InputDecoration(labelText: "Adı ve Soyadı"),
                ),
                TextFormField(
                  controller: tckn,
                  decoration: InputDecoration(labelText: "TCKN"),
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(labelText: "e-mail"),
                ),
                TextFormField(
                  controller: sifre,
                  decoration: InputDecoration(labelText: "Şifrenizi girin"),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Şifreyi onaylayın"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: FloatingActionButton.extended(
                      label: Text(" Kaydı tamamla "),
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        _fire
                            .kayitEt(email.text, sifre.text, tckn.text,
                                adivesoyadi.text)
                            .then(
                              (value) => showDialog<String>(
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
                              ),);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
