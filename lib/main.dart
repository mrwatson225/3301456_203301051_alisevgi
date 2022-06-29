import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'ekranlar/girisEkranı.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false
      ,home: SimpleAnimation()));
}

class SimpleAnimation extends StatefulWidget {
  const SimpleAnimation({Key? key}) : super(key: key);

  @override
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>girisEkrani()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(49, 49, 49, 1),
      body: Center(

        child: RiveAnimation.asset('lib/animation/animasyon.riv')
      ),
    );
  }
}
