import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'EducationScreen.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:nua_health/user-screens/HomeScreen.dart';
import 'EducationScreen.dart';

class PhysicalHealthScreen extends StatefulWidget {
  @override
  _PhysicalHealthScreenState createState() => _PhysicalHealthScreenState();
}

class _PhysicalHealthScreenState extends State<PhysicalHealthScreen> {
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
                "PHYSICAL HEALTH",
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
                          "SKIN CONDITIONS",
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
                          "Common Conditions",
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
                          "Acne\nRashes\nCycsts\nDermatitis",
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
                          "Avoid Direct Sunlight (due to UV exposure)\nComsume food with Omega-3 Fatty Acids (like Salmon)\nConsume nuts and seeds\n\nDisclaimer - In an emergency call 911",
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
                          "JOINT/BACK PAIN",
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
                          "Common Causes",
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
                          "Injury\nArthritis\nAging",
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
                          "Staying Active\nEating Healthy Foods\nMaintaining Healthy Weight\nOral Medication (prescribed)\nTopical Medicine (prescribed/over-the-counter)\nPhysical Therapy\n\nDisclaimer - In an emergency call 911",
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
                          "CHOLESTEROL",
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
                          "Signs of Heart Problems",
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
                          "Having high cholesterol doubles chances of developing heart disease (leading cause of death in United States)\nCholesterol is waxy substance that can restrict bloodflow\nSigns include: heart burn, chest discomfort and pain that spreads to arm",
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
                          "Causes/Prevention/Treatments",
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
                          "Maintain healthy diet (fruits, veggies, whole grain, lean protein)\nAvoid tobacco products\nAvoid food with high levels of cholesterol\n\nDisclaimer - In an emergency call 911",
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
