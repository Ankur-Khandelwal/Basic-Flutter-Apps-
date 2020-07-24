import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dice"),
          backgroundColor: Colors.redAccent,
        ),
        drawer: Drawer(
          child: Center(
            child: Container(
              child: Text(
                'Made with ❤ by Ankur',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNum = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceNum = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/Dice$diceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
