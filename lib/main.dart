import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'components/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds:Home(),
      backgroundColor: Colors.grey[90],

      image : Image.asset("images/logo.png", width: 190.03, height: 168.15,),
      // loadingText: Text("Loading"),
      photoSize: 100,
    );
  }
}


