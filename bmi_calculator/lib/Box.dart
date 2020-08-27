import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  Box({@required this.colour, this.boxChild, this.onPress});

  final Color colour;
  final Widget boxChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: boxChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}