import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: WeProject(),
  ));
}

class WeProject extends StatefulWidget {

  @override
  _WeProjectState createState() => _WeProjectState();
}

class _WeProjectState extends State<WeProject> {
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
            Positioned(
                top: 22.0,
                left: 2.0,
                child: Column(
                  children: [
                    Row(
                      children: [ Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: CircleAvatar(
                            radius: 38.0,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage('assets/cir2.jpg'),
                            ),
                          ),
                        ),
                      ),
                        SizedBox(width: 90.0,),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 15.0, 150.0, 0.0),
                            child: Text(
                              'TITLE',
                              style: TextStyle(
                                fontFamily: 'BB',
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Container(
                          child: SizedBox(width: 25.0,),
                        ),
                        Container(
                          child: Text(
                            'WELCOMING TEXT MESSAGE',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: 'BB',
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 90.0,),
                    Row(
                      children: [
                        Container(
                          child: SizedBox(width: 50.0,),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 133.0,
                              child: CircleAvatar(
                                radius: 125.0,
                                backgroundImage: AssetImage('assets/logo2.jpeg'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 90.0,),
                    Row(
                      children: [
                        Container(
                          child: SizedBox(width: 255.0,),
                        ),
                        Container(
                            child: ElevatedButton(
                              child: Text(
                                "     View Questions",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Mon',

                                ),
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140.0,60.0),
                                primary: Colors.red,
                                onPrimary: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            )
                        )
                      ],
                    )
                  ],
                )
            ),
          ],
        ),
      );
  }
}


