import 'package:flutter/material.dart';


class Instructions extends StatefulWidget {
  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9E8AC6),
      body: Stack(
        children: [
        Positioned.fill(
        top: 22.0,
        child: Image(
          image: AssetImage('assets/in.jpg'),
          fit: BoxFit.cover,
        ),
      ),
          Positioned(
            top: 25.0,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 10.0),
                      child: Text(
                          'Welcome!',
                        style: TextStyle(
                          fontFamily: 'BB',
                          fontSize: 42.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0.0),
                      child: Text(
                        'Hello, we hope you are having a fantastic day. \nStuck somewhere? Don\'t worry '
                            'we got you. We \nwill take you through these few easy steps to \nmanage whatever these nasty things '
                            'troubled \nyou with.The instructions go as : \n\n'
                            '1. Once you move to the questions page select \nwhatever you are stuck at.\n\n'
                            '2. It will redirect you to a page that will explain \nyou to what to do.'
                            'Follow the instructions on that \npage carefully :).'
                            '\n\nIt was easy right, these things just act '
                            'nasty \nsometimes, just like your kids. Since, we can\'t be \nof any help there, we can hopefully help '
                            'you \nmanage one of the notorious things around you ;).',

                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(250.0, 145.0, 15.0, 0.0),
                  child: Row(
                    children: [
                      Container(
                          child: ElevatedButton(
                            child: Text(
                              "    View \nQuestions",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Mon',

                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, 'question');
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(140.0,60.0),
                              primary: Color(0xFF07224C),
                              onPrimary: Colors.white,
                              shadowColor: Colors.grey[800],
                              elevation: 20.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    ),
    );
  }
}
