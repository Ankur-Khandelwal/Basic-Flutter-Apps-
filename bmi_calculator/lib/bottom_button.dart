import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
            child: Text(
              buttonTitle,
              style: kCalculateButtonText,
            ),
          ),
          color: kColorbottomContainer,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 60,
        ),
      ),
    );
  }
}
