import 'package:flutter/material.dart';

import './quizMental.dart';
import './resultMental.dart';

class MentalQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MentalQuizState();
  }
}

class _MentalQuizState extends State<MentalQuiz> {
  final _questions = const [
    {
      'questionText': 'Q1: Which mood most aligns with how you are currently feeling?',
      'answers': [
        {'text': 'Depressed', 'score': 4},
        {'text': 'Anxious', 'score': 4},
        {'text': 'Angry', 'score': 3},
        {'text': 'Suicidal Thoughts', 'score': 5},
        {'text': 'Other', 'score': 2}
      ],
    },
    {
      'questionText': 'Q2: How bothersome are these feelings for you?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Slight', 'score': 2},
        {'text': 'Moderate', 'score': 3},
        {
          'text': 'Very', 'score': 4},
        {'text': 'Extremely', 'score': 5}
      ],
    },
    {
      'questionText': 'Q3: How much time do you spend a day feeling this way?',
      'answers': [
        {'text': 'None - not daily', 'score': 1},
        {'text': 'Under an hour', 'score': 2},
        {'text': '2-3 hours', 'score': 3},
        {'text': '4-5 hours', 'score': 4},
        {'text': 'All day', 'score': 5}
      ],
    },
    {
      'questionText': 'Q4: Have you seen a healthcare professional in the past about this issue before?',
      'answers': [
        {'text': 'No', 'score': 4},
        {'text': 'Once', 'score': 3},
        {'text': 'Occasionally', 'score': 2},
        {'text': 'Routinely', 'score': 2}
      ],
    },
    {
      'questionText':
      'Q5: Do you have a support system you can discuss these issues with?',
      'answers': [
        {
          'text': 'No', 'score': 5},
        {'text': 'Online Community', 'score': 4},
        {'text': 'Friends or Family', 'score': 3},
        {'text': 'A healthcare professional', 'score': 1}
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