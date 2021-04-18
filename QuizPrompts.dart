import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'DentalQuiz/dentalQuiz.dart';
import 'MentalQuiz/mentalQuiz.dart';
import 'PhysicalQuiz/physicalQuiz.dart';





class QuizPrompts extends StatefulWidget {
  @override
  _QuizPromptsState createState() => _QuizPromptsState();
}

class _QuizPromptsState extends State<QuizPrompts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
       height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        color: Color(0xFF00BDC9),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0, -0.42),
              child: new Text(
                'TAKE THE QUIZ',
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Roboto',
                    color: Color(0xFFFFFFFF)
                ),
              ),
            ),
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


            Align(
              alignment: Alignment(0,0.5),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.2,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DentalQuiz()));;
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(0xFFFFFFFF),
                  child: Text(
                    "Dental",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF0094A8),
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,0.1),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.2,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MentalQuiz()));;
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(0xFFFFFFFF),
                  child: Text(
                    "Mental",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF0094A8),
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,-0.3),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.2,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => PhysicalQuiz()));;
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(0xFFFFFFFF),
                  child: Text(
                    "Physical",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF0094A8),
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.75),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.22,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {},
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(0xFFFFFFFF),
                  child: Text(
                    "Should I see a medical professional?",
                    textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                      color: Color(0xFF0094A8),
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,

                    ),

                  ),
                ),
              ),
            ),
          ],


        ),


      ),





    );
  }



}
