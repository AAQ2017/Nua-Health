import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'EducationScreen.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:nua_health/user-screens/HomeScreen.dart';


class DentalHealthScreen extends StatefulWidget {
  @override
  _DentalHealthScreenState createState() => _DentalHealthScreenState();
}

class _DentalHealthScreenState extends State<DentalHealthScreen> {
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
                "DENTAL HEALTH",
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => EducationScreen()));
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Color(0x00000000),
                  child: Text(
                    "GO BACK",
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


            Swiper.children(
              autoplay: false,


              pagination: new SwiperPagination(
                  alignment: Alignment(0,0.75),
                  margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  builder: new DotSwiperPaginationBuilder(
                    color: Colors.blueGrey,
                    activeColor: Colors.white,
                    size: 10.0,
                    activeSize: 15.0,


                  )


              ),
              children: <Widget>[

// 1
                Align(
                  alignment: Alignment(0,0.15),
                  child: Container(
                    height: 470,
                    width: 275,

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
                        alignment: Alignment(0,-0.85),
                        child: Text(
                          "TOOTHACHE",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 20,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,-0.65),
                        child: Text(
                          "Causes/Symptoms",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,-0.5),
                        child: Text(
                          "",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.teal[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,-0.1),
                        child: Text(
                          "Prevention/Treatments",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,0.35),
                        child: Text(
                          "Disclaimer - In an emergency call 911",
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
                  alignment: Alignment(0,0.15),
                  child: Container(
                    height: 470,
                    width: 275,

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
                        alignment: Alignment(0,-0.85),
                        child: Text(
                          "STAINED TEETH/CAVITIES",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 20,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,-0.65),
                        child: Text(
                          "Causes/Symptoms",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,-0.5),
                        child: Text(
                          "",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.teal[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,-0.2),
                        child: Text(
                          "Prevention/Treatments",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,0.35),
                        child: Text(
                          "Disclaimer - In an emergency call 911",
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
                  alignment: Alignment(0,0.15),
                  child: Container(
                    height: 470,
                    width: 275,

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
                        alignment: Alignment(0,-0.85),
                        child: Text(
                          "CHIPPED/CRACKED TOOTH",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 20,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,-0.65),
                        child: Text(
                          "Causes/Symptoms",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,-0.3),
                        child: Text(
                          "",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.teal[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,0.25),
                        child: Text(
                          "Prevention/Treatments",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(

                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment(0,0.8),
                        child: Text(
                          "Disclaimer - In an emergency call 911",
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












              ],

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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
              ),
            ),









          ],
        ),



      ),
    );
  }
}
