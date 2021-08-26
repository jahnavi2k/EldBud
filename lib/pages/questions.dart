import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_settings/open_settings.dart';
import 'package:app_settings/app_settings.dart';
import 'package:system_settings/system_settings.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffCBCDE7),
      body: CupertinoScrollbar(
        isAlwaysShown: true,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 295.0, 0.0),
                child: Container(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.grey[800],
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('assets/logo.jpg'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                  child: ElevatedButton(
                    child: Text(
                      "Switch on Wifi",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'wifi');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFF07224C),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.black,
                      elevation: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),

                  )
              ),
              SizedBox(height: 30.0,),
              Container(
                  child: ElevatedButton(
                    child: Text(
                      "Switch on Mobile Data",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',
                      ),
                    ),
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFF07224C),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.grey[100],
                      elevation: 50.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 30.0,),
              Container(
                  child: ElevatedButton(
                    child: Text(
                      "Adjust the volume of \n          ringtone",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () {
                      AppSettings.openSoundSettings();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFF07224C),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.grey[100],
                      elevation: 50.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 30.0,),
              Container(
                  child: ElevatedButton(
                    child: Text(
                      "Turn ON/OFF Airplane Mode",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'airplane');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFF07224C),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.grey[100],
                      elevation: 50.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 30.0,),
              Container(
                  child: ElevatedButton(
                    child: Text(
                      "To increase font size",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () {
                      OpenSettings.openAccessibilitySetting();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFF07224C),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.grey[100],
                      elevation: 50.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 30.0,),
              Container(
                  child: ElevatedButton(
                    child: Text(
                      "Bluetooth",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () {
                      SystemSettings.bluetooth();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFF07224C),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.grey[100],
                      elevation: 50.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 30.0,),
              Container(
                  child: ElevatedButton(
                    child: Text(
                      "Save a Contact",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFF07224C),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.grey[100],
                      elevation: 50.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 30.0,),
              Container(
                  child: ElevatedButton(
                    child: Text(
                      "Save a Contact",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFF07224C),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.black,
                      elevation: 50.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }
}