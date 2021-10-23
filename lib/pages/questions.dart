import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_settings/open_settings.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:system_settings/system_settings.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';


class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  Future<void> _askPermissions(String routeName) async {
    PermissionStatus permissionStatus = await _getContactPermission();
    if (permissionStatus == PermissionStatus.granted) {
      Navigator.of(context).pushNamed(routeName);
    } else {
      _handleInvalidPermissions(permissionStatus);
    }
  }

  Future<PermissionStatus> _getContactPermission() async {
    PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.permanentlyDenied) {
      PermissionStatus permissionStatus = await Permission.contacts.request();
      return permissionStatus;
    } else {
      return permission;
    }
  }

  void _handleInvalidPermissions(PermissionStatus permissionStatus) {
    if (permissionStatus == PermissionStatus.denied) {
      final snackBar = SnackBar(content: Text('Access to contact data denied'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
      final snackBar =
      SnackBar(content: Text('Contact data not available on device'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
  Future<void>? _launched;

  Future<void> _launchInWebViewOrVC(String url) async {
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    String toLaunch = 'https://www.youtube.com/';
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: CupertinoScrollbar(
          isAlwaysShown: true,
          child:
          Padding(
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
                        "Check Connectivity",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Mon',
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'con_check');
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140.0,60.0),
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
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
                        "Wifi",
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
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10,
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
                        "Mobile Data",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Mon',
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'mobiledata');
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140.0,60.0),
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
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
                        "Airplane Mode",
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
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
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
                      onPressed: () => _askPermissions('add'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140.0,60.0),
                        primary: Color(0xffD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
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
                        "Make a Phone Call",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Mon',

                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'phone');
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140.0,60.0),
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
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
                      "WhatsApp Video / Voice Call",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () => _askPermissions('nativeContactPicker'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFFD8A7B1),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                    child: ElevatedButton(
                      child: Text(
                        "Adjust ringtone volume",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Mon',

                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context,'ringtonevolume');
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140.0,60.0),
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
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
                        "Open YouTube",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Mon',
                        ),
                      ),
                      onPressed: () => setState(() {
                        _launched = _launchInWebViewOrVC(toLaunch);
                      }),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140.0,60.0),
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
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
                        "Open Play Store",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Mon',
                        ),
                      ),
                      //onPressed: _launchURL,
                      onPressed: () {
                        Navigator.pushNamed(context,'playstore');
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140.0,60.0),
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
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
                      "Increase font size",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Mon',

                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context,'fontSize');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0,60.0),
                      primary: Color(0xFFD8A7B1),
                      onPrimary: Color(0XFFFFFFFF),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
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
                        primary: Color(0xFFD8A7B1),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.black,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    )
                ),
                SizedBox(height: 30.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// _launchURL() async {
//   const url = 'https://play.google.com/store/apps';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }