import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class PhysicalQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhysicalQuizState();
  }
}

class _PhysicalQuizState extends State<PhysicalQuiz> {
  final _questions = const [
    {
      'questionText': 'Q1: Which part of your body are you concerned about?',
      'answers': [
        {'text': 'Cardiac', 'score': 5},
        {'text': 'Muscular', 'score': 4},
        {'text': 'Respiratory', 'score': 5},
        {'text': 'Skin', 'score': 3},
        {'text': 'Other', 'score': 2}
      ],
    },
    {
      'questionText': 'Q2: What is your level of pain?',
      'answers': [
        {'text': 'None or Not Applicable', 'score': 1},
        {'text': 'Low', 'score': 2},
        {'text': 'Moderate', 'score': 4},
        {
          'text': 'Extreme', 'score': 5},
      ],
    },
    {
      'questionText': 'Q3: Have you experienced this issue before?',
      'answers': [
        {'text': 'No', 'score': 5},
        {'text': 'A few times', 'score': 3},
        {'text': 'Often', 'score': 2},
        {'text': 'Constantly', 'score': 4},
      ],
    },
    {
      'questionText': 'Q4: Have you visited a doctor about this issue before?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 4},
        {'text': 'Routinely', 'score': 3},

      ],
    },
    {
      'questionText':
      'Q5: When was the last time you visited your doctor?',
      'answers': [
        {
          'text': '< 6 months ago', 'score': 2},
        {'text': 'About 6 months ago', 'score': 3},
        {'text': '1 year ago', 'score': 4},
        {'text': '> 1+ years ago', 'score': 5}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF00BDC9),
        body: Column(
          //padding: const EdgeInsets.all(30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(40,100,40,0),
            ),
            _questionIndex < _questions.length
                ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            ) //Quiz
                : Result(_totalScore, _resetQuiz),
            Align(
              alignment: Alignment(0, 0.7),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: new Text(
                  'Disclaimer: If you are experiencing an emergency please call 911',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Roboto',
                      color: Color(0xFFFFFFFF)
                  ),
                ),
              ),
            ),
          ],
        ),//Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}