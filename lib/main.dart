import 'package:we_project/splash.dart';
import 'package:flutter/material.dart';
import 'package:we_project/pages/home.dart';
import 'package:we_project/pages/questions.dart';
import 'package:we_project/pages/wifi.dart';
import 'package:we_project/pages/airplane.dart';
import 'package:we_project/pages/mobiledata.dart';
import 'package:we_project/pages/ringtonevolume.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    routes: {
      'home': (context) => Splash(),
      'question' : (context) => Questions(),
      'wifi' : (context) => Wifi(),
      'airplane' : (context) => AirplaneMode(),
      'mobiledata' : (context) => MobileData(),
      'ringtonevolume' : (context) => RingtoneVolume(),
    },
  ));
}
