import 'package:flutter/material.dart';
import '../user-screens/QuizPrompts.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 19) {
      resultText = 'Based on your responses you should see a mental health professional urgently.\n\n You may be experiencing pain or conditions that need to be addressed as soon as possible.\n\nUrgent hotline numbers can be found here\n\nPlease visit our In Your Area tab to find clinics near you!';
    } else if (resultScore >= 12) {
      resultText = 'Based on your responses you should see a mental health professional soon.\n\nYou may be experiencing pain or conditions that are safe to be addressed at a later time.\n\nPlease visit our In Your Area tab to find clinics near you';
    } else if (resultScore < 12) {
      resultText = 'Based on your responses you should see a mental health professional at your convenience.\n\nYou may be experiencing issues that can be safely addressed at a later time.\n\nPlease visit our In Your Area tab to find clinics near you!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment(0,-0.8),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.1,
              child: RaisedButton(
                elevation: 5,
                onPressed: () {},
                padding: EdgeInsets.all(5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color(0xFFFFFFFF),
                child:
                Text(
                  'Quiz Results',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ), //Text
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: RaisedButton(
                elevation: 5,
                onPressed: () {},
                padding: EdgeInsets.all(5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color(0xFFFFFFFF),
                child:
                Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ), //Text
              ),
            ),
          ),
          FlatButton(
            child: Text(
                'Back to Quiz Home',
                style: TextStyle(fontSize: 24)
            ), //Text
            textColor: Colors.yellow,
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => QuizPrompts()));;
            },
          ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}