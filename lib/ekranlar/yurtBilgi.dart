import 'package:flutter/material.dart';

class yurtBilgileri extends StatelessWidget {
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
                      " Yurt Bilgileri",
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

                ClipRRect(
                    borderRadius: BorderRadius.circular(27.0),
                    child: Image.asset('images/aliulvi.jpg'),
                  ),
              SizedBox(height: 40,),
              ListTile(leading: Icon(Icons.arrow_forward_outlined,color: Colors.black,),
                title: Text("KYK Ali Ulvi Kurucu Erkek Öğrenci Yurdu "),
              ),
              SizedBox(height: 20,),
              ListTile(
                  leading: Icon(Icons.home,color: Colors.black),
                  title: Text("Yurt adresi: Kosova Mah.Ünaldı Sokak No:1 Selçuklu/KONYA")),
              SizedBox(height: 15,),
              ListTile(
                  leading: Icon(Icons.phone, color: Colors.black),

                  title: Text("İletişim numarası:(0332) 261 0561")),
              SizedBox(height: 15,),

            ],
          ),
        ),
      ),
    );
  }
}
