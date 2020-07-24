import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Made by Ankur',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          title: Text('I am Rich'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/DIAMOND1.jpg'),
          ),
        ),
      ),
    ),
  );
}
