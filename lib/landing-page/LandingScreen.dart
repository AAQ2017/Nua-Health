import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:nua_health/landing-page/SignUpScreen.dart';
import 'package:nua_health/landing-page/LoginScreen.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
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
              alignment: Alignment(0,-0.5),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.modulate),
                child: Image.asset(
                  "assets/images/nuaLogo.png",
                ),
              ),
            ),

            // Sign Up
            Align(
              alignment: Alignment(0,0.25),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.17,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignUpScreen()));
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(0xFFF0F0F0),
                  child: Text(
                    "SIGN UP",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF0094A8),
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),

            // Login
            Align(
              alignment: Alignment(0,0.5),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.17,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));;
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(0xFF00EFE1),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF0094A8),
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),




            // Design - Top Right
            Container (
              child: Align (
                alignment: Alignment(1,-1),

                child: ClipPath(
                  clipper: OvalLeftBorderClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.height * 0.2,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),

            // Design - Bottom Left
            Container (
              child: Align (
                alignment: Alignment(-1,1),
                child: ClipPath(
                  clipper: OvalRightBorderClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.height * 0.20,
                    color: Color(0xFFFFFFFF),

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