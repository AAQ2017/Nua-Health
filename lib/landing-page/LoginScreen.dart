import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nua_health/landing-page/LandingScreen.dart';
import 'package:nua_health/user-screens/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String email, password;
  bool saveAttempt = false;
  final loginKey = GlobalKey<FormState>();
  FirebaseAuth _fireAuth = FirebaseAuth.instance;

  void _signIn({String em, String pw}){
    _fireAuth.signInWithEmailAndPassword(email: em, password: pw).then((loginVal){
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    }).catchError((err){
      print(err.code);
      if((err.code == "ERROR_USER_NOT_FOUND") | (err.code == "ERROR_WRONG_PASSWORD")){
        showCupertinoDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Email and/or password is incorrect.\nPlease try again."),
            actions: <Widget>[
              FlatButton(
                child: Text("OK"),
                onPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
      }
    });
  }


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
              alignment: Alignment(0,-0.75),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.modulate),
                child: Image.asset(
                  "assets/images/nuaLogo.png",
                ),
              ),
            ),

            // Sign Up Text
            Align(
              alignment: Alignment(0,-0.3),
              child: Text(
                "LOGIN",
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


            Form(
              key: loginKey,
              child: Stack(children: <Widget>[

                // Email
                Align(
                  alignment: Alignment(0,-0.1),
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color:Color(0xFFD0FCFF),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: TextField(

                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        border: UnderlineInputBorder(),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: false,

                      onChanged: (emailValue){
                        setState(() {
                          email = emailValue;
                        });
                      },

                    ),
                  ),
                ),


                // Password
                Align(
                  alignment: Alignment(0,0.1),
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color:Color(0xFFD0FCFF),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: TextField(

                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        border: UnderlineInputBorder(),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,

                      onChanged: (passValue){
                        setState(() {
                          password = passValue;
                        });
                      },

                    ),
                  ),
                ),


                Align(
                  alignment: Alignment(0,0.4),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 45),
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.18,
                    child: RaisedButton(
                      elevation: 5,
                      onPressed: (){
                        _signIn(em: email, pw: password);
                      },
                      padding: EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Color(0xFF00EFE1),
                      child: Text(
                        "LOGIN",
                        style: GoogleFonts.roboto(
                          color: Color(0xFF0094A8),
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

              ],),
            ),


            Align(
              alignment: Alignment(0,0.6),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 45),
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.18,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => LandingScreen()));
                  },
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Color(0xFFE79981),
                  child: Text(
                    "GO BACK",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF39556D),
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
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
