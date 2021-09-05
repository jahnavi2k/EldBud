import 'package:we_project/pages/fontSize.dart';
import 'package:we_project/splash.dart';
import 'package:flutter/material.dart';
import 'package:we_project/pages/questions.dart';
import 'package:we_project/pages/wifi.dart';
import 'package:we_project/pages/airplane.dart';
import 'package:we_project/pages/mobiledata.dart';
import 'package:we_project/pages/ringtonevolume.dart';
import 'package:we_project/pages/instructions.dart';
//import 'package:we_project/main2.dart';
import 'package:we_project/pages/call.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'contact_list_page.dart';
//import 'contact_list_page.dart';





void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    routes: {
      'home': (context) => Splash(),
      'instructions': (context) => Instructions(),
      'question' : (context) => Questions(),
      'wifi' : (context) => Wifi(),
      'airplane' : (context) => AirplaneMode(),
      'mobiledata' : (context) => MobileData(),
      'ringtonevolume' : (context) => RingtoneVolume(),
      'add': (context) => AddContactPage(),
      'phone': (context) => PhoneCall(),
      'fontSize' : (context) => FontSize(),
    },
  ));
}

