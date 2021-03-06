import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Color(0xFFFFFFFF),
        textColor: Color(0xFF006B72),
        child: Text(answerText,
            style: TextStyle(fontSize: 24)),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}