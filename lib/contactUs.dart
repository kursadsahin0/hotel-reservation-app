import 'package:flutter/material.dart';

class contuctUs extends StatefulWidget {
  @override
  State<contuctUs> createState() => _contuctUsState();
}

class _contuctUsState extends State<contuctUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF003d5a),
        appBar: AppBar(
          backgroundColor: Color(0xFF003d5a),
          title: Text('Contuct Us'),
          elevation: 0,
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Location',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 50,
                        ),
                        Text(
                          ' Örnek Mah. 1371. Sokak No 1/1 Doğan Araslı Bulvarı \n Esenyurt - İstanbul / TÜRKİYE',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'EMAIL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        ' info@rushotel.com.tr',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'TELEPHONE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        ' +90 212 620 00 22',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'CONTACT FORM',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      child: Form(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Name',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Form(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Mail',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Mail',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 400,
                  child: Form(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Topic',
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'Topic',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 400,
                  child: Form(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Message',
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'Message',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF5845fc),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 300,
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
