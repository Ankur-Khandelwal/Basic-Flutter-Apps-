import 'package:bmi_calculator/Box.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResult,
    @required this.interpretation,
    @required this.resultText,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              child: Box(
                colour: kActiveCardColour,
                boxChild: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      resultText,
                      style: TextStyle(
                        color: (resultText == 'NORMAL')
                            ? Colors.green
                            : Colors.red,
                        fontSize: 19,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Calculate Again',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
