import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:nua_health/user-screens/ChatScreen.dart';
import 'package:nua_health/user-screens/HomeScreen.dart';
import 'package:nua_health/user-screens/QuizPrompts.dart';
import 'package:nua_health/user-screens/education/EducationScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'InYourArea.dart';


class FreeClinics extends StatefulWidget {
  @override
  _FreeClinics createState() => _FreeClinics();
}
class _FreeClinics extends State<FreeClinics> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: Color(0xFF00BDC6),
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

              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment(0,0),
                child:
                TextField(
                  controller: myController,
                  // fillColor: Colors.white,
                  //obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0)),
                    labelText: 'Please Enter Your ZIP Code:',
                  ),
                ),
              ),

              Align(
                alignment: Alignment(0,0.45),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 45),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: FloatingActionButton(
                    backgroundColor: Color(0xFFFFFFFF),
                    // When the user presses the button, show an alert dialog containing
                    // the text that the user has entered into the text field.
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                        },
                      );
                      _findingZip(myController.text);
                    },
                    tooltip: 'Show me free clinics nearby!',
                    child: Icon(FlutterIcons.clinic_medical_faw5s,
                        size:40,
                        color:Colors.green),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(0,0.7),
                margin: EdgeInsets.all(20),

                child: FlatButton(
                  child: Text(
                      'Go Back',
                      style: TextStyle(fontSize: 24)
                  ), //Text
                  textColor: Colors.yellow,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => InYourArea()));;
                  },
                ), //FlatButton
              ),

              Align(
                alignment: Alignment(0, 0.2),
                child: new Text(
                  'Click Here To Find A Free Clinic Near You',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      color: Color(0xFFFFFFFF)
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
Future<void> _findingZip(String zip) async {
  await launch("https://www.google.com/maps/search/Free+Clinics+Near+"+zip);
}