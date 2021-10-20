import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayStor extends StatefulWidget {
  @override
  _PlayStor createState() => _PlayStor();
}

class _PlayStor extends State<PlayStor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCBCDE7),
      appBar: AppBar(
        backgroundColor: Color(0xff7283B3),
        elevation: 50.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Step1- Search for the app and \n             click on "Install."               ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Mon',

                    ),
                  ),
                )
              ],
            ),


            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/appDownload.gif',
                      width: 1000.0,
                      height: 400.0,
                    ),
                  ),
                ),
              ],
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 55.0, 0.0, 30.0),
                  child: Text(
                    'Step2- Click on the green button \n              to open the app',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Mon',

                    ),
                  ),
                )
              ],
            ),


            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/appDownload2.jpg',
                    width: 1000.0,
                    height: 400.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}