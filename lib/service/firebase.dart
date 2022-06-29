import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class firebase{
  final FirebaseFirestore _fb = FirebaseFirestore.instance;
  final FirebaseAuth _oto = FirebaseAuth.instance;
  static String? id;
  static Map? veriler;
  Future<User?> girisYap(String email,String pas)async{
    var ogrenci= await _oto.signInWithEmailAndPassword(email: email, password: pas);

//verileri ekrana yazmak için
    id=ogrenci.user?.uid;
    var col=_fb.collection("ogrenci");
     var ref=col.doc(id);
     var response= await ref.get();
     veriler=response.data();
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