import 'package:flutter/material.dart';

class odam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      Icons.door_back_door_outlined,
                      color: Colors.blueGrey,
                      size: 30.0,
                    ),
                    Text(
                      " Odam",
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
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              border: Border.all(width: 1.0),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  30,
                ),
              ),
            ),


          ),
        ),
      ),
    );
  }
}
