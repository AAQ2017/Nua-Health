import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nua_health/InYourArea/FreeClinics.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:nua_health/user-screens/HomeScreen.dart';
import 'package:nua_health/user-screens/education/EducationScreen.dart';
import '../DentalQuiz/dentalQuiz.dart';
import '../MentalQuiz/mentalQuiz.dart';
import '../PhysicalQuiz/physicalQuiz.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'ChatScreen.dart';




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

            // Logo
            Align(
              alignment: Alignment(0.9,-0.9),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.modulate),
                child: Image.asset(
                  "assets/images/nuaLogo.png",
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
              ),
            ),




            // Logout
            Align(
              alignment: Alignment(-1,-0.825),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LandingScreen()));
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Color(0x00000000),
                  child: Text(
                    "LOGOUT",
                    style: GoogleFonts.roboto(
                      color: Colors.yellowAccent,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400,
                      fontSize:  16,
                    ),
                  ),
                ),
              ),
            ),


            // Bottom
            Align(
              alignment: Alignment(0,1),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6,
                        spreadRadius: 3,
                        offset: Offset(0, -3),
                      ),
                    ]),
              ),
            ),



// Home Button
            Align(
              alignment: Alignment(0,1),
              child: IconButton(
                icon: Icon(
                  FontAwesome5Solid.home,
                ),
                iconSize: 40,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
              ),
            ),


            // Brain Button
            Align(
              alignment: Alignment(-0.5,1),
              child: IconButton(
                icon: Icon(
                  FlutterIcons.plus_square_faw,
                ),
                iconSize: 40,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => FreeClinics()));
                },
              ),
            ),


            // Exercise Button
            Align(
              alignment: Alignment(0.5,1),
              child: IconButton(
                icon: Icon(
                  FlutterIcons.book_medical_faw5s,
                ),
                iconSize: 40,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => EducationScreen()));
                },
              ),
            ),


            // Education Button
            Align(
              alignment: Alignment(-1,1),
              child: IconButton(
                icon: Icon(
                  FlutterIcons.clipboard_list_faw5s,
                ),
                iconSize: 40,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => QuizPrompts()));
                },
              ),
            ),


            // Diet Button
            Align(
              alignment: Alignment(1,1),
              child: IconButton(
                icon: Icon(
                  FlutterIcons.chat_bubble_mdi,
                ),
                iconSize: 40,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ChatScreen()));
                },
              ),
            ),








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