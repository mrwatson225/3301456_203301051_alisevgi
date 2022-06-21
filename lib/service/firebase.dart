import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class firebase{
  final FirebaseFirestore _fb = FirebaseFirestore.instance;
  final FirebaseAuth _oto = FirebaseAuth.instance;

  Future<User?> girisYap(String email,String pas)async{
    var ogrenci= await _oto.signInWithEmailAndPassword(email: email, password: pas);
    return ogrenci.user;
  }

  kayitEt(String email,String pas,String tckn,String adiVeSoyadi) async{
    var ogrenci= await _oto.createUserWithEmailAndPassword(email: email, password: pas);
    Map<String, dynamic> ogrenciMap = {
      "adiVeSoyadi": adiVeSoyadi,
      "e-Mail": email,
      "password": pas,
      "tckn": tckn,
    };
    await _fb.collection("ogrenci").doc(ogrenci.user?.uid).set(ogrenciMap);
    return ogrenci.user;
  }

}