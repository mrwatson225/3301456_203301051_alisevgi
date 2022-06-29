import 'package:flutter/material.dart';

class duyurular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List Listem = [


      ListTile(
          leading: Icon(Icons.notifications_active),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
        tileColor: Colors.blueGrey,
        title: Text("Yurd'um otomasyonuna hoşgeldiniz")),
      SizedBox(
        height: 3,
      ),
      ListTile(
          leading: Icon(Icons.notifications_active),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          tileColor: Colors.blueGrey,
          title: Text("Yurt giriş ve çıkış saatleri giriş güncellenmiştir")),
      SizedBox(
        height: 3,
      ),
      ListTile(
          leading: Icon(Icons.notifications_active),

          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          tileColor: Colors.blueGrey,
          title: Text("Yurt çıkış saati 23:00")),
      SizedBox(
        height: 3,
      ),
      ListTile(
          leading: Icon(Icons.notifications_active),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          tileColor: Colors.blueGrey,
          title: Text("Yurt giriş saati 06.00")),
      SizedBox(
        height: 3,
      ),
      ListTile(
          leading: Icon(Icons.notifications_active),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),          tileColor: Colors.blueGrey,
          title: Text("Yurt içinde sigara yasağına dikkat edelim")),
      SizedBox(
        height: 3,
      ),

      ListTile(
          leading: Icon(Icons.notifications_active),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          tileColor: Colors.blueGrey,
          title: Text("Çamaşırhane 19.00 dan sonra kapanacaktır")),
      SizedBox(
        height: 3,
      ),

      ListTile(
          leading: Icon(Icons.notifications_active),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          tileColor: Colors.blueGrey,
          title: Text("Evine dönecek öğrencilerimizin gitmeden önce izin alması gerekmektedir")),
      SizedBox(
        height: 3,
      ),
      ListTile(
          leading: Icon(Icons.notifications_active),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          tileColor: Colors.blueGrey,
          title: Text("23.00'dan sonra dışarıdan yemek sipariş etmek yasaktır")),
    ];

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
                      Icons.volume_up,
                      color: Colors.blueGrey,
                      size: 30.0,
                    ),
                    Text(
                      " Duyurular",
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: Listem.length,
              itemBuilder: (context, index) {
                return Listem[index];
              }),
        ),
      ),
    );
  }
}
