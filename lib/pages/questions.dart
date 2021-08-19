import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lime[200],
      body: Stack(
        children: [
        Positioned.fill(
        top: 22.0,
        child: Image(
        image: AssetImage('assets/bg2.jpg'),
        fit: BoxFit.cover,
        ),
        ),
          Positioned(child: Text('hello'),),
      ],
        ),
    );
  }
}
