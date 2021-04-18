import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:nua_health/user-screens/ChatScreen.dart';
import 'package:nua_health/user-screens/HomeScreen.dart';
import 'package:nua_health/user-screens/QuizPrompts.dart';
import 'package:nua_health/user-screens/education/EducationScreen.dart';
import 'ImportantNumbers.dart';
import 'FreeClinics.dart';
import 'NearestClinics.dart';

class InYourArea extends StatefulWidget {
  @override
  _InYourArea createState() => _InYourArea();
}
class _InYourArea extends State<InYourArea> {
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
              alignment: Alignment(0, -0.6),
              child: new Text(
                'In Your Area',
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 36.0,
                    fontFamily: 'Roboto',
                    color: Color(0xFFFFFFFF)
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,-0.35),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.2,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => NearestClinics()));;
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color(0xFFFFFFFF),
                  child: Text(
                    "Your Nearest Clinic",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,0.45),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.2,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ImportantNumbers()));;
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color(0xFFFFFFFF),
                  child: Text(
                    "Important Numbers",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,0.05),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.2,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => FreeClinics()));;
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color(0xFFFFFFFF),
                  child: Text(
                    "Free Clinics",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.8,-0.3),
              child: Icon(
                FlutterIcons.near_me_mco,
                size: 40,
              ),
            ),
            Align(
              alignment: Alignment(0.81, 0.38),
              child: Icon(
                FlutterIcons.phone_call_fea,
                size: 38,
              ),
            ),
            Align(
              alignment: Alignment(0.75, 0.04),
              child: Icon(
                FlutterIcons.money_off_mdi,
                size: 42,
              ),
            ),
          ],
        ),
      ),

    );
  }
}