import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ekranlar/girisEkranı.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MaterialApp(
        title: "Yurd'um",
          debugShowCheckedModeBanner: false,
          home: girisEkrani()));
}
