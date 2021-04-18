import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:nua_health/InYourArea/FreeClinics.dart';
import 'package:nua_health/user-screens/HomeScreen.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:nua_health/user-screens/education/DentalHealth.dart';
import 'package:nua_health/user-screens/education/MentalHealth.dart';
import 'package:nua_health/user-screens/education/coronaInfo.dart';
import '../ChatScreen.dart';
import '../QuizPrompts.dart';
import 'PhysicalHealth.dart';

class EducationScreen extends StatefulWidget {
  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
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


            Align(
              alignment: Alignment(0,-0.65),
              child: Text(
                "INFORMATION",
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
              alignment: Alignment(0,-0.5),
              child: Container(
                height: 75,
                width: 300,
                child: RaisedButton(
                  elevation: 10,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => PhysicalHealthScreen()));
                  },
                  padding: EdgeInsets.all(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  child: Stack(children: <Widget> [
                    Align(
                      alignment: Alignment(-0.75,0),
                      child: Text(
                        "PHYSICAL HEALTH",
                        style: GoogleFonts.roboto(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.95,0),
                      child: Icon(
                        FlutterIcons.medical_bag_mco,
                        color: Colors.blue,
                        size: 70,

                      ),
                    ),
                  ]),


                ),
              ),
            ),


            Align(
              alignment: Alignment(0,-0.2),
              child: Container(
                height: 75,
                width: 300,
                child: RaisedButton(
                  elevation: 10,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MentalHealthScreen()));
                  },
                  padding: EdgeInsets.all(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  child: Stack(children: <Widget> [
                    Align(
                      alignment: Alignment(-0.75,0),
                      child: Text(
                        "MENTAL HEALTH",
                        style: GoogleFonts.roboto(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.9,0),
                      child: Icon(
                        FlutterIcons.brain_faw5s,
                        color: Colors.blue,
                        size: 60,

                      ),
                    ),
                  ]),


                ),
              ),
            ),

            Align(
              alignment: Alignment(0,0.1),
              child: Container(
                height: 75,
                width: 300,
                child: RaisedButton(
                  elevation: 10,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DentalHealthScreen()));
                  },
                  padding: EdgeInsets.all(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  child: Stack(children: <Widget> [
                    Align(
                      alignment: Alignment(-0.75,0),
                      child: Text(
                        "DENTAL HEALTH",
                        style: GoogleFonts.roboto(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.95,0),
                      child: Icon(
                        FlutterIcons.tooth_faw5s,
                        color: Colors.blue,
                        size: 60,

                      ),
                    ),
                  ]),


                ),
              ),
            ),


            Align(
              alignment: Alignment(0,0.4),
              child: Container(
                height: 75,
                width: 300,
                child: RaisedButton(
                  elevation: 10,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => coronaInfoScreen()));
                  },
                  padding: EdgeInsets.all(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  child: Stack(children: <Widget> [
                    Align(
                      alignment: Alignment(-0.75,0),
                      child: Text(
                        "COVID-19",
                        style: GoogleFonts.roboto(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.95,0),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(Colors.blue, BlendMode.modulate),
                        child: Image.asset(
                          "assets/images/virus.png",
                          height: 70,
                        ),



                      ),
                    ),
                  ]),


                ),
              ),
            ),


            Align(
              alignment: Alignment(0,0.75),
              child: Text(
                "Disclaimer: If you are experiencing an emergency please call:\n\n911",
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
