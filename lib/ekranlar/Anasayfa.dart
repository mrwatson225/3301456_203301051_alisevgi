import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ekranlar/aksamYemegi.dart';
import 'package:untitled/ekranlar/duyurular.dart';
import 'package:untitled/ekranlar/istek.dart';
import 'package:untitled/ekranlar/kahvaltiMenu.dart';
import 'package:untitled/ekranlar/odam.dart';
import 'package:untitled/ekranlar/personel.dart';
import 'package:untitled/ekranlar/yurtBilgi.dart';

class anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        automaticallyImplyLeading: false,
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
                    Icons.home,
                    color: Colors.blueGrey,
                    size: 30.0,
                  ),
                  Text(
                    " Anasayfa",
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
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.yellowAccent,
                Colors.amber

              ],
              tileMode: TileMode.mirror,
            ),
          ),
         // margin: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 50),
          child: /*FittedBox(
                    child: Image.asset('images/yurt_binasi.jpg'),
                  fit: BoxFit.fill        ),*/
              Stack(
            children: [


              Container(
                margin: EdgeInsets.only(left: 30,right: 30,bottom: 70,top: 30),
                child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              30,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.all(30),
                        margin: EdgeInsets.all(10),
                        width: 300.0,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: 200,
                                    height: 200,
                                    child: FittedBox(
                                      child: Image.asset('images/duyuru.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text("Duyurular",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10.0),
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(200, 50),
                                        primary: Colors.white60),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  duyurular()));
                                    },
                                    icon: const Icon(
                                      Icons.volume_up,
                                      size: 30.0,
                                    ),
                                    label: const Text("Duyurular"),
                                  ),
                                ),
                                const SizedBox(height: 70),
                              ],
                            ),
                          ],
                        ),
                      ),),
                    SingleChildScrollView(
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            30.0,
                          ),
                        ),
                      ),
                        padding: EdgeInsets.all(30),
                      margin: EdgeInsets.all(10),
                      width: 300.0,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 200,
                                  height: 200,
                                  child: FittedBox(
                                    child: Image.asset('images/odam.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Odam",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(200, 50),
                                      primary: Colors.white60),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            odam()));
                                  },
                                  icon: const Icon(
                                    Icons.door_back_door_outlined,
                                    size: 30.0,
                                  ),
                                  label: const Text("Odam"),
                                ),
                              ),
                              const SizedBox(height: 70),
                            ],
                          ),
                        ],
                      ),
                    ),),
                    SingleChildScrollView(
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            30.0,
                          ),
                        ),
                      ),
                        padding: EdgeInsets.all(30),
                      margin: EdgeInsets.all(10),
                      width: 300.0,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 200,
                                  height: 200,
                                  child: FittedBox(
                                    child: Image.asset('images/yurt.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Benim Yurd'um",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(200, 50),
                                      primary: Colors.white60),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                yurtBilgileri()));
                                  },
                                  icon: const Icon(
                                    Icons.apartment_rounded,
                                    size: 30.0,
                                  ),
                                  label: const Text("Yurt Bilgileri"),
                                ),
                              ),
                              const SizedBox(height: 70),
                            ],
                          ),
                        ],
                      ),
                    ),),
                    SingleChildScrollView(
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            30.0,
                          ),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(30),
                      width: 300.0,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 200,
                                  height: 200,
                                  child: FittedBox(
                                    child: Image.asset('images/personel.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Personel",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(200, 50),
                                      primary: Colors.white60),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                personel()));
                                  },
                                  icon: const Icon(
                                    Icons.account_box_rounded,
                                    size: 30.0,
                                  ),
                                  label: const Text("Personel"),
                                ),
                              ),
                              const SizedBox(height: 70),
                            ],
                          ),
                        ],
                      ),
                    ),),
                    SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(30),
                        width: 300.0,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: 200,
                                    height: 200,
                                    child: FittedBox(
                                      child: Image.asset('images/istek.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text("İstek,Şikayet",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10.0),
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(200, 50),
                                        primary: Colors.white60),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  istek()));
                                    },
                                    icon: const Icon(
                                      Icons.announcement_rounded,
                                      size: 30.0,
                                    ),
                                    label: const Text("İstek,Şikayet"),
                                  ),
                                ),
                                const SizedBox(height: 70),
                              ],
                            ),
                          ],
                        ),
                      ),),
                    SingleChildScrollView(
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            30.0,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(30),
                      margin: EdgeInsets.all(10),
                      width: 300.0,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 200,
                                  height: 200,
                                  child: FittedBox(
                                    child: Image.asset('images/yemek_foto3.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Yemekhane",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white)),
                              ),
                              SizedBox(
                                height: 20,
                              ),


                              Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(200, 50),
                                      primary: Colors.white60),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                kahvaltiMenu()));
                                  },
                                  icon: const Icon(
                                    Icons.sunny,
                                    size: 30.0,
                                  ),
                                  label: const Text("Kahvaltı"),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(200, 50),
                                      primary: Colors.white60),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => aksamYemegi()));
                                  },
                                  icon: const Icon(
                                    Icons.nights_stay,
                                    size: 30.0,
                                  ),
                                  label: const Text("Akşam Yemeği"),
                                ),
                              ),


                          ],
                      ),
                        ],
                      ),
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
