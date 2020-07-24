import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'question_bank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Center(
              child: Text(
            'Made with ❤ by Ankur',
            style: TextStyle(fontSize: 20),
          )),
        ),
        backgroundColor: Colors.white54,
        appBar: AppBar(
          title: Text('Quizzler'),
          centerTitle: true,
        ),
        body: SafeArea(child: QuizPage()),
      ),
    );
  }
}

Widget checkIcon(IconData icon, Color color) {
  return Icon(
    icon,
    color: color,
    size: 25,
  );
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  QuestionBank question = QuestionBank();
  int score = 0;

  void checkAnswer(bool userAnswer) {
    setState(() {
      if (question.isFinished() == true) {
        onAlertButtonsPressed(context);
        question.reset();
        scoreKeeper = [];
        score = 0;
      } else {
        if (question.getAnswer() == userAnswer) {
          scoreKeeper.add(checkIcon(Icons.check, Colors.green));
          score++;
        } else {
          scoreKeeper.add(checkIcon(Icons.close, Colors.red));
        }
      }
      question.nextQuest();
    });
  }

  onAlertButtonsPressed(context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Quiz Finished!",
      desc: "You have answered $score questions correctly.",
      buttons: [
        DialogButton(
          child: Text(
            "Play Again",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          onPressed: () => Navigator.pop(context),
          color: Color.fromRGBO(0, 179, 100, 1.0),
        ),
        DialogButton(
          child: Text(
            "Exit",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          onPressed: () =>
              SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
          color: Color.fromRGBO(179, 0, 50, 1.0),
        )
      ],
    ).show();
  }

  Widget button(Color color, String text, bool ans) {
    return Container(
      width: 200,
      height: 60,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: color,
        onPressed: () {
          setState(() {
            checkAnswer(ans);
          });
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(75.0)),
                color: Colors.white60,
              ),
              width: 350,
              height: 400,
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  question.getQuestion(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          button(Colors.green, 'True', true),
          SizedBox(
            width: double.infinity,
            height: 30,
          ),
          button(Colors.red, 'False', false),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          Container(
            width: 375,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
            ),
            child: Row(
              children: scoreKeeper,
            ),
          )
        ],
      ),
    );
  }
}
