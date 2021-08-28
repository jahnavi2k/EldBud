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
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Hello, we hope you are having an awesome day. Got \nstuck somewhere while using these '
                            'stupid thing which \nmesses up the very task it is supposed to do. Don\'t \nworry '
                            'we got you. We will take you through these few \neasy steps to manage whatever these nasty things '
                            '\ntroubled you with.The instructions go as : \n\n'
                            '1. Once you move to the questions page select \nwhatever you are stuck at.\n\n'
                            '2. It will redirect you to a page that will explain you what \nto do.'
                            ' Make sure you you look at the GIF and the \ninstructions on that page carefully (You can do it.'
                            ' Trust \nus, you are the best).\n\n'
                            '3. Whenever you think you have seen the GIF enough \nnumber of times and know what to do.'
                            'Click on the \nbutton down there that will redirect you to the settings \nand then follow the steps '
                            'you were shown on the page \nand you are done. \n\nIt was easy right, these things just act '
                            'nasty \nsometimes, just like your kids. Since, we can\'t be of any \nhelp there, we can hopefully help '
                            'you manage one of \nthe notorious things around you ;).',

                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(250.0, 35.0, 15.0, 0.0),
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
