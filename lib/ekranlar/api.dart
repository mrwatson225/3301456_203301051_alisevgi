import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  
  Future myApi() async {
    var response =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var data = jsonDecode(response.body);
    List<User> users = [];
    for (var i in data) {
      User user = User(name: i["name"], mail: i["email"]);
      users.add(user);
      
    }
    print(users.length);
      return users;
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Personel"),
        ),
        body: Container(
          color: Colors.yellowAccent,
          child: Card(
            color: Colors.yellowAccent,
            child: FutureBuilder(
                future: myApi(),
                builder: (context,  AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                       color: Colors.yellowAccent,
                      child: Center(
                        child: Text("Loading"),
                      ),
                    );
                  }
                  else return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context,i){
                      return ListTile(
                        selectedTileColor: Colors.yellowAccent,
                        
                         leading: Icon(Icons.supervised_user_circle),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
        tileColor: Colors.blueGrey,
                        title: Text(snapshot.data[i].name.toString()),);
                        
                    });
                }),
          ),
        ));
  }
}

class User {
  String? name;
  String? mail;
  User({this.name, this.mail});
}
