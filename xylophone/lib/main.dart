import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

Widget button(Color color, int soundNum) {
  return Container(
    width: double.infinity,
    height: 100,
    child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('$soundNum.wav');
        },
        child: Text("")),
  );
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Center(
            child: Text(
              "Made with ❤ by Ankur",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Xylophone'),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button(Colors.red, 1),
              button(Colors.orange, 2),
              button(Colors.yellow, 3),
              button(Colors.green, 4),
              button(Colors.teal, 5),
              button(Colors.blue, 6),
              button(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
