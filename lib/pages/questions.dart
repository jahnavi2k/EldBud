import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_settings/open_settings.dart';
import 'package:app_settings/app_settings.dart';
// import 'package:bubble_showcase/bubble_showcase.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0XFF647C90),
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
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('assets/cir2.jpg'),
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
                      Fluttertoast.showToast(
                        msg: "Click on the Toggle button -> ",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.TOP,
                        backgroundColor: Color(0XFF647C90),
                        textColor: Colors.white,
                        fontSize: 24.0,
                      );
                      OpenSettings.openWIFISetting();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0XFFE2DED0),
                      onPrimary: Color(0XFF647C90),
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
                      Fluttertoast.showToast(
                        msg: "Click on the Toggle button -> ",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.TOP,
                        backgroundColor: Color(0XFF647C90),
                        textColor: Colors.white,
                        fontSize: 24.0,
                      );
                      AppSettings.openDataRoamingSettings();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0XFFE2DED0),
                      onPrimary: Color(0XFF647C90),
                      shadowColor: Colors.black,
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
                      Fluttertoast.showToast(
                        msg: "Adjust the sliders for the volumes",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Color(0XFF647C90),
                        textColor: Colors.white,
                        fontSize: 24.0,
                      );
                      AppSettings.openSoundSettings();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0XFFE2DED0),
                      onPrimary: Color(0XFF647C90),
                      shadowColor: Colors.black,
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
                      Fluttertoast.showToast(
                        msg: "Click on the Toggle button ->",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.CENTER,
                        backgroundColor: Color(0XFF647C90),
                        textColor: Colors.white,
                        fontSize: 22.0,
                      );
                      OpenSettings.openAirplaneModeSetting();

                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0XFFE2DED0),
                      onPrimary: Color(0XFF647C90),
                      shadowColor: Colors.black,
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
                      primary: Color(0XFFE2DED0),
                      onPrimary: Color(0XFF647C90),
                      shadowColor: Colors.black,
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
                      OpenSettings.openBluetoothSetting();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0XFFE2DED0),
                      onPrimary: Color(0XFF647C90),
                      shadowColor: Colors.black,
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
                      primary: Color(0XFFE2DED0),
                      onPrimary: Color(0XFF647C90),
                      shadowColor: Colors.black,
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
                      primary: Color(0XFFE2DED0),
                      onPrimary: Color(0XFF647C90),
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