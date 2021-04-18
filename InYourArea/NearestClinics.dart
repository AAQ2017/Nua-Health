import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'InYourArea.dart';


class NearestClinics extends StatefulWidget {
  @override
  _NearestClinics createState() => _NearestClinics();
}
class _NearestClinics extends State<NearestClinics> {
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
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment(0,0),
                child:
                TextField(
                  controller: myController,
                  // fillColor: Colors.white,
                  //obscureText: true,
                  decoration: InputDecoration( fillColor: Colors.white,
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
                    child: Icon(FlutterIcons.first_aid_fou,
                        size:50,
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
                  'Click Here to Search for Health Professionals Nearest to You',
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
  await launch("https://www.google.com/maps/search/health+care+near+" + zip);
}