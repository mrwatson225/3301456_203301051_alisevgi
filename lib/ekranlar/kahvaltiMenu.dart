import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kahvaltiMenu extends StatelessWidget {
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
                      Icons.sunny,
                      color: Colors.blueGrey,
                      size: 30.0,
                    ),
                    Text(
                      " Kahvaltı",
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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        3.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset('images/patates.jpg'),
                        ),
                      ),
                      SizedBox(
                          height: 18,
                          child: Text("    Patates Kızartması  : 4.00 TL")),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        3.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset('images/sosis.jpg'),
                        ),
                      ),
                      SizedBox(
                          height: 18,
                          child: Text("    Sosis Kızartması  : 4.00 TL")),
                    ],
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
