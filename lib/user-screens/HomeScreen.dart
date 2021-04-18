import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nua_health/InYourArea/FreeClinics.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:nua_health/user-screens/ChatScreen.dart';
import 'package:nua_health/user-screens/education/EducationScreen.dart';
import 'QuizPrompts.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFFFFFFF),
        child: Stack(
          children: <Widget>[

            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFF00BDC9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ]),
            ),




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


            Align(
              alignment: Alignment(0,-0.8),
              child: Text(
                "WELCOME",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )
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


            Align(
              alignment: Alignment(0,-0.55),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.875,

                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(0,3),
                    ),]
                ),

                child: Stack(children: <Widget>[

                  Align(
                    alignment: Alignment(-1,0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/milky-way-1023340_1920.jpg",

                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.75,-1),
                    child: Text(
                      "PATIENT NAME",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.7,-0.3),
                    child: Text(
                      "DOB: 01/01/1998",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.55,0.2),
                    child: Text(
                      "AGE: 23",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.6,0.7),
                    child: Text(
                      "SEX: MALE",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                ],),
              ),
            ),



            Align(
              alignment: Alignment(-0.8,-0.1),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.375,

                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(0,3),
                    ),]
                ),

                child: Stack(children: <Widget>[
                  Align(
                    alignment: Alignment(0,1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/surgery-1807541_1920.jpg",

                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,-1),
                    child: Text(
                      "FIND A CLINIC",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),



                ],),
              ),
            ),


            Align(
              alignment: Alignment(0.8,-0.1),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.375,

                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(0,3),
                    ),]
                ),

                child: Stack(children: <Widget>[
                  Align(
                    alignment: Alignment(0,1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/book-1283865_1920.jpg",
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,-0.95),
                    child: Text(
                      "EDUCATE YOURSELF",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),


                ],),
              ),
            ),



            Align(
              alignment: Alignment(0.8,0.3),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.375,

                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(0,3),
                    ),]
                ),

                child: Stack(children: <Widget>[
                  Align(
                    alignment: Alignment(0,1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/analysis-3707159_1920.jpg",
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,-1),
                    child: Text(
                      "CHAT WITH DOCTOR",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),



                ],),
              ),
            ),


            Align(
              alignment: Alignment(-0.8,0.3),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.375,

                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(0,3),
                    ),]
                ),

                child: Stack(children: <Widget>[
                  Align(
                    alignment: Alignment(0,1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/question-mark-3470783_1920.jpg",
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,-1),
                    child: Text(
                      "SHOULD I SEE A HEALTH PROFESSIONAL QUIZ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 12.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),


                ],),
              ),
            ),


            Align(
              alignment: Alignment(0,0.75),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.875,

                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(0,3),
                    ),]
                ),

                child: Stack(children: <Widget>[
                  Align(
                    alignment: Alignment(-1,0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/ambulance-1674877_1280.png",

                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(.75,0),
                    child: Text(
                      "IMPORTANT NUMBERS",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(

                        color: Colors.teal[800],
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),



                ],),
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







          ],
        ),
      ),
    );
  }
}

