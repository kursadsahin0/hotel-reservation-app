import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'reservation.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://r1.ilikewallpaper.net/iphone-wallpapers/download/8238/Maldives-Ayada-Hotel-iphone-wallpaper-ilikewallpaper_com.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'We strive to be the preeminent lodging real estate investment trust (REIT), focused on consistently delivering superior, risk-adjusted returns for stockholders through active asset management and a thoughtful external growth strategy, while maintaining a strong and flexible balance sheet.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF5845fc),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 300,
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text(
                          "Let's Start",
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
