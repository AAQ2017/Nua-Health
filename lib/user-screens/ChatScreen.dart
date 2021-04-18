import 'package:flutter/material.dart';
import 'package:nua_health/InYourArea/FreeClinics.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'HomeScreen.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'QuizPrompts.dart';
import 'education/EducationScreen.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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


            Align(
              alignment: Alignment(0,0.25),
              child: Container(
                height: 550 ,
                width: 500,

                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFF00BDC9),

                ),

                child: Image.asset(
                  "assets/images/chatwindow.png",
                  height: MediaQuery.of(context).size.height,
                  width: 500,
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


          ],
        ),



      ),
    );
  }
}

