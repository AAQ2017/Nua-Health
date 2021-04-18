import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'LandingScreen.dart';
import 'LoginScreen.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String name, email, password, confirmPassword;
  bool savedAttempted = false;
  final formKey = GlobalKey<FormState>();
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;



  void _createUser({String n, String em, String pw}){

    _firebaseAuth.createUserWithEmailAndPassword(email: em, password: pw)
        .then((currentLinkUser) => FirebaseFirestore.instance.collection("users")
        .doc(currentLinkUser.user.uid).set({"nuaid": currentLinkUser.user.uid, "name": name, "email": em}))
        .then((authResult) => {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()))
    })
        .catchError((err){print(err.code);
    if (err.code == "ERROR_EMAIL_ALREADY_IN_USE") {
      showCupertinoDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("This email already has an account assosicated with it"),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
    }
    });
  }


  String emailValidator(String value) {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|'
        r'(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(('
        r'[a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Invalid Email Format";
    } else {
      return null;
    }
  }

  String passwordValidator(String value) {
    if (value.length < 8) {
      return "Password must be longer than 8 characters" ;
    } else {
      return null;
    }
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
          children: <Widget> [
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

            // Form
            Form(
              key: formKey,

              child: Stack(children: <Widget>[


                // Name
                Align(

                  alignment: Alignment(0,-0.1),
                  child: Container(

                    height: MediaQuery.of(context).size.height *0.07,
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color:Color(0xFFD0FCFF),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: TextFormField(

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(color:Colors.blueGrey),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        border: UnderlineInputBorder(),

                        //border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: false,

                      onChanged: (textValue) {
                        setState(() {
                          name = textValue;
                        });
                      },
                      validator: (nameValue) {
                        if (nameValue.isEmpty) {
                          return "Required";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),


                // Email
                Align(

                  alignment: Alignment(0,0.07),
                  child: Container(

                    height: MediaQuery.of(context).size.height *0.07,
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color:Color(0xFFD0FCFF),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: TextFormField(

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color:Colors.blueGrey),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        border: UnderlineInputBorder(),

                        //border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: false,

                      onChanged: (textValue) {
                        setState(() {
                          email = textValue;
                        });
                      },
                      validator: emailValidator,
                    ),
                  ),
                ),


                // Password
                Align(

                  alignment: Alignment(0,0.24),
                  child: Container(

                    height: MediaQuery.of(context).size.height *0.07,
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color:Color(0xFFD0FCFF),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: TextFormField(

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color:Colors.blueGrey),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        border: UnderlineInputBorder(),

                        //border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,

                      onChanged: (textValue) {
                        setState(() {
                          password = textValue;
                        });
                      },
                      validator: passwordValidator,
                    ),
                  ),
                ),

                // Confirm Password
                Align(

                  alignment: Alignment(0,0.41),
                  child: Container(

                    height: MediaQuery.of(context).size.height *0.07,
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color:Color(0xFFD0FCFF),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: TextFormField(

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(color:Colors.blueGrey),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        border: UnderlineInputBorder(),

                        //border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,

                      onChanged: (textValue) {
                        setState(() {
                          confirmPassword = textValue;
                        });
                      },

                      validator: (pwdConfVal){
                        if (pwdConfVal != password){
                          return "Passwords must match";
                        }
                        return null;
                      },
                    ),
                  ),
                ),


                // Sign Up Button
                Align(
                  alignment: Alignment(0,0.7),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 45),
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.18,
                    child: RaisedButton(
                      elevation: 5,
                      onPressed: () {
                        setState(() {
                          savedAttempted = true;
                        });
                        if(formKey.currentState.validate()){
                          formKey.currentState.save();
                          _createUser(em: email, pw: password);
                        }
                      },
                      padding: EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Color(0xFFB5E8FF),
                      child: Text(
                        "SIGN UP",
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

                Align(
                  alignment: Alignment(0,0.9),
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


              ],),
            ),




          ],
        ),

      ),
    );
  }
}

