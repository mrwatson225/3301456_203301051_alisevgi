import 'package:flutter/material.dart';

class yurtBilgileri extends StatelessWidget {
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
      ),
    );
  }
}