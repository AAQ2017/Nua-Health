import 'package:flutter/material.dart';

import './quizDental.dart';
import './resultDental.dart';

class DentalQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DentalQuizState();
  }
}

class _DentalQuizState extends State<DentalQuiz> {
  final _questions = const [
    {
      'questionText': 'Q1: Which symptom most closely aligns with your concerns?',
      'answers': [
        {'text': 'Tooth Ache', 'score': 3},
        {'text': 'Gum Pain', 'score': 4},
        {'text': 'Jaw Pain', 'score': 3},
        {'text': 'Tooth Chip', 'score': 4},
        {'text': 'Yellowing/Other', 'score': 1}
      ],
    },
    {
      'questionText': 'Q2: What is your level of discomfort?',
      'answers': [
        {'text': 'None or Not Applicable', 'score': 1},
        {'text': 'Low', 'score': 2},
        {'text': 'Moderate', 'score': 3},
        {
          'text': 'Extreme', 'score': 5},
      ],
    },
    {
      'questionText': 'Q3: When was the last time you visited the dentist?',
      'answers': [
        {'text': '< 6 months ago', 'score': 1},
        {'text': 'About 6 months ago', 'score': 2},
        {'text': '1 year ago', 'score': 3},
        {'text': '> 1+ years ago', 'score': 4},
      ],
    },
    {
      'questionText': 'Q4: Which of these symptoms have you experienced most recently?',
      'answers': [
        {'text': 'Headache', 'score': 3},
        {'text': 'Difficulty Eating/Chewing', 'score': 4},
        {'text': 'Fever', 'score': 5},
        {'text': 'None', 'score': 2}
      ],
    },
    {
      'questionText':
      'Q5: How often have you experienced this issue?',
      'answers': [
        {
          'text': 'First occurance', 'score': 4},
        {'text': 'A few times', 'score': 2},
        {'text': 'Multiple times', 'score': 3},
        {'text': 'Frequently', 'score': 5}
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