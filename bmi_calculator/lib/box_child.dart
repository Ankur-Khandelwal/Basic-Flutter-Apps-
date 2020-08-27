import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class BoxChild extends StatelessWidget {
  // ignore: non_constant_identifier_names
  BoxChild({this.box_icon, this.box_text});
  // ignore: non_constant_identifier_names
  final IconData box_icon;
  // ignore: non_constant_identifier_names
  final String box_text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          box_icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          box_text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}