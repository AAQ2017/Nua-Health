import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class ImportantNumbers extends StatefulWidget {
  @override
  _ImportantNumbers createState() => _ImportantNumbers();
}

class _ImportantNumbers extends State<ImportantNumbers> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
        height: MediaQuery.of(context).size.height,
    width:MediaQuery.of(context).size.width,
    color: Color(0xFFFFFFFF),
    child: Stack(
    children: <Widget>[
    Align(
    alignment: Alignment(0, -0.7),
    child: new Text(
    'Important Numbers and Hotlines',
    textAlign: TextAlign.center,
    style: new TextStyle(
    fontSize: 32.0,
    fontFamily: 'Roboto',
    color: Color(0xFF006B72)
    ),
    ),
    ),
      Align(
        alignment: Alignment(0, -0.45),
        child: new Text(
          'Help is available to you 24/7. Please call if you require assistance:',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Color(0xFF006B72)
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, -0.3),
        child: new Text(
          'National Suicide Prevention Hotline',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Colors.green
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, -0.1),
        child: new Text(
          'National Domestic Violence Hotline',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Colors.purple
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, 0.1),
        child: new Text(
          'National Sexual Assault Hotline',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Colors.blue
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, 0.3),
        child: new Text(
          'National Emergency Number',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Colors.red
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, 0.6),
        child: new Text(
          'Can\'t find the number you\'re looking for? Contact the National Human Service Call Center to be connected to the appropriate resources.',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Colors.black54
          ),
        ),
      ),
      Align(
        alignment: Alignment(0.7, 0.85),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 45),
          width: MediaQuery.of(context).size.width * 0.17,
          height: MediaQuery.of(context).size.height * 0.16,
          child: RaisedButton(
            elevation: 5,
            onPressed: () { setState((){
              _makingPhoneCall("tel:211");
            });
            },
            padding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Color(0xFF0094A8),
            child: Text(
              "Call",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Color(0xFFFFFFFF),
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 18,

              ),

            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment(0.7, 0.46),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 45),
          width: MediaQuery.of(context).size.width * 0.17,
          height: MediaQuery.of(context).size.height * 0.16,
          child: RaisedButton(
            elevation: 5,
            onPressed: () { setState((){
              _makingPhoneCall("tel:911");
            });
            },
            padding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Color(0xFF0094A8),
            child: Text(
              "Call",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Color(0xFFFFFFFF),
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 18,

              ),

            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment(0.7, 0.23),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 45),
          width: MediaQuery.of(context).size.width * 0.17,
          height: MediaQuery.of(context).size.height * 0.16,
          child: RaisedButton(
            elevation: 5,
            onPressed: () { setState((){
              _makingPhoneCall("tel:18006564673");
            });
            },
            padding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Color(0xFF0094A8),
            child: Text(
              "Call",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Color(0xFFFFFFFF),
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 18,

              ),

            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment(0.7, -0.01),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 45),
          width: MediaQuery.of(context).size.width * 0.17,
          height: MediaQuery.of(context).size.height * 0.16,
          child: RaisedButton(
            elevation: 5,
            onPressed: () { setState((){
              _makingPhoneCall("tel:18007997233");
            });
            },
            padding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Color(0xFF0094A8),
            child: Text(
              "Call",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Color(0xFFFFFFFF),
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 18,

              ),

            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment(0.7, -0.24),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 45),
          width: MediaQuery.of(context).size.width * 0.17,
          height: MediaQuery.of(context).size.height * 0.16,
          child: RaisedButton(
            elevation: 5,
            onPressed: () { setState((){
              _makingPhoneCall("tel:18002738255");
            });
            },
            padding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Color(0xFF0094A8),
            child: Text(
              "Call",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Color(0xFFFFFFFF),
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 18,

              ),

            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, -0.205),
        child: new Text(
          '1-800-273-8255',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),
      Align(
        alignment: Alignment(-0.25, -0.01),
        child: new Text(
          '1-800-799-SAFE (7233)',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),
      Align(
        alignment: Alignment(-0.25, 0.2),
        child: new Text(
          '1-800-656-HOPE (4673)',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, 0.4),
        child: new Text(
          '911',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, 0.73),
        child: new Text(
          '211',
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),
    ],
    ),
    ),
    );
  }
}
Future<void> _makingPhoneCall(String url) async {
    await launch(url);
  }