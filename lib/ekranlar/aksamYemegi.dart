import 'package:flutter/material.dart';

class aksamYemegi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          backgroundColor: Colors.amber,
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
                      Icons.nights_stay,
                      color: Colors.blueGrey,
                      size: 30.0,
                    ),
                    Text(
                      " Akşam Yemeği",
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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, left: 30,right: 30),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.0
                  ),
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(3.0,
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
                        child: Image.asset('images/makarna.jpg'),
                      ),
                    ),
                    SizedBox(
                        height: 18,
                        child: Text("    Makarna  : 7.00 TL")),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 30,right: 30),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.0
                  ),
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(3.0,
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
                        child: Image.asset('images/tavuk.jpg'),
                      ),
                    ),
                    SizedBox(
                        height: 18,
                        child: Text("    Tavuk Haşlama  : 12.00 TL")),
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
