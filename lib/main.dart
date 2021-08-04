import 'package:dance_id_user/components/assignSeatsButtons.dart';
import 'package:dance_id_user/components/createEvents.dart';
import 'package:dance_id_user/components/createGroup.dart';
import 'package:dance_id_user/components/profile1.dart';
import 'package:dance_id_user/components/seatCreation.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'components/home.dart';
import 'components/mainpage.dart';

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
      seconds: 3,
      navigateAfterSeconds:Home(),
      backgroundColor: Colors.grey[90],

      image : Image.asset("images/logo.png", width: 190.03, height: 168.15,),
      // loadingText: Text("Loading"),
      photoSize: 100,
    );
  }
}


