import 'package:flutter/material.dart';
import 'landing-page/LandingScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MuaHealthApp());
}

class MuaHealthApp extends StatelessWidget {
  final Future<FirebaseApp> _muaApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _muaApp,
        builder: (context, snapshot){
          if (snapshot.hasError) {
            print ("Error! ${snapshot.error.toString()}");
            return Text("Something Went Wrong");
          } else if (snapshot.hasData) {
            return LandingScreen();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
