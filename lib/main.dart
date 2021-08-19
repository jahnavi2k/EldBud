import 'package:flutter/material.dart';
import 'package:we_project/pages/home.dart';
import 'package:we_project/pages/questions.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    routes: {
      'home': (context) => WeProject(),
      'question' : (context) => Questions(),
    },
  ));
}