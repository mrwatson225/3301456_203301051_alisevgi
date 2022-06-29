import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/service/firebase.dart';

class odam extends StatelessWidget {
  Map veri = firebase.veriler as Map;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.yellowAccent, Colors.lightBlueAccent],
              ),
            ),
          ),
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Row(
                  children: const [
                    Icon(
                      Icons.apartment_rounded,
                      color: Colors.blueGrey,
                      size: 30.0,
                    ),
                    Text(
                      "Bilgilerim",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border.all(width: 1.50),
            borderRadius: BorderRadius.all(
              Radius.circular(
                30,
              ),
            ),
          ),

          child: Column(
            children: [
SizedBox(height: 30,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(27.0),
                    child: Icon(Icons.account_circle_rounded,size: 150,color: Colors.blueGrey,),
                  ),
              SizedBox(height: 40,),
              ListTile(leading: Icon(Icons.supervised_user_circle_rounded,color: Colors.black,),
                title: Text("${veri["adiVeSoyadi"].toString()}"),
              ),
              SizedBox(height: 20,),
              ListTile(
                  leading: Icon(Icons.key,color: Colors.black),
                  title: Text("${veri["tckn"].toString()}")),
              SizedBox(height: 15,),
              ListTile(
                  leading: Icon(Icons.mail, color: Colors.black),

                  title: Text("${veri["e-Mail"].toString()}")),
              SizedBox(height: 15,),

            ],
          ),
        ),
      ),
    );
  }
}
