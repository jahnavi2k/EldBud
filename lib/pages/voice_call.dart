import 'package:flutter/material.dart';

class VoiceCall extends StatefulWidget {
  @override
  _VoiceCall createState() => _VoiceCall();
}

class _VoiceCall extends State<VoiceCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCBCDE7),
      appBar: AppBar(
        backgroundColor: Color(0xff7283B3),
        elevation: 50.0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.phone,
            ),
          )
        ],
      ),
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/voice_call.gif'),
          fit: BoxFit.fitHeight,
        ),
    ),
        ),
    );
  }
}