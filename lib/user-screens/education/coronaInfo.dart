import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nua_health/InYourArea/FreeClinics.dart';
import 'package:nua_health/user-screens/ChatScreen.dart';
import '../QuizPrompts.dart';
import 'EducationScreen.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:nua_health/user-screens/HomeScreen.dart';


class coronaInfoScreen extends StatefulWidget {
  @override
  _coronaInfoScreenState createState() => _coronaInfoScreenState();
}

class _coronaInfoScreenState extends State<coronaInfoScreen> {
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
            Align(
              alignment: Alignment(0,0),
              child: Container(
                height: 500,
                width: 310,

                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: Offset(0,3),
                      ),
                    ]
                ),

                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(0,-0.90),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "SARS-CoV2 (COVID-19)",
                            style: GoogleFonts.roboto(
                              color: Colors.blueGrey,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,),
                            children: <TextSpan> [
                              TextSpan(text: "\n\n\nAccording to the Centers for Disease Control and Prevention (CDC)\nCOVID-19 is caused by a novel coronavirus first identified in Wuhan, China in December 2019.\n.", style: GoogleFonts.roboto(fontSize: 14)),
                              TextSpan(text: "\n\nMost people infected should recover, however patients may experience complications upon recovery", style: GoogleFonts.roboto(fontSize: 12)),
                              TextSpan(text: "\n\nTo stay up to date on the latest news on COVID-19, please visit the official CDC website:", style: GoogleFonts.roboto(fontSize: 14)),
                              TextSpan(text: "\n\nhttps://www.cdc.gov/coronavirus/2019-ncov/index.html ", style: GoogleFonts.roboto(fontSize: 16)),

                            ]
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment(0,0.9),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(Colors.white, BlendMode.modulate),
                        child: Image.asset(
                          "assets/images/virus.png",
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                      ),
                    ),

                  ],
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
