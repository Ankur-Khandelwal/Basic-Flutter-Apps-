import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 250),
          SizedBox(
            width: double.infinity,
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/Ankur_CyberSec.jpg'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Ankur Khandelwal',
            style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'DEVELOPER | CONTENT STRATEGIST',
            style: TextStyle(color: Colors.teal.shade50),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'QUALKI SOLUTIONS',
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 1,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            child: Divider(
              color: Colors.teal.shade100,
            ),
            height: 20,
            width: 230,
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.call,
                    size: 30,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+91 700xxxxxxx',
                    style: TextStyle(color: Colors.teal.shade900, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'khandelwalankur176@gmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20,
                        fontFamily: 'SourceSansPro'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
