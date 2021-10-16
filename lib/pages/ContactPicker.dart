import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';


class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {


  String? _contact;


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Video call on WhatsApp'),
    ),
    body: Column(
      children: kIsWeb && !FlutterContactPicker.available
          ? [_buildError(context)]
          : _buildChildren(context),
    ),
  );

  Widget _buildError(BuildContext context) {
    return RichText(
      text: TextSpan(
          text:
          'Your browser does not support contact pickers for more information see: ',
          children: [
            TextSpan(
                text: 'https://web.dev/contact-picker/',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch('https://web.dev/contact-picker/')),
            TextSpan(text: ' and '),
            TextSpan(
                text:
                'https://developer.mozilla.org/en-US/docs/Web/API/Contact_Picker_API#Browser_compatibility/',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch(
                      'https://developer.mozilla.org/en-US/docs/Web/API/Contact_Picker_API#Browser_compatibility'))
          ]),
    );
  }

  List<Widget> _buildChildren(BuildContext context) {
    return <Widget>[
      /*if (_phoneContact != null)
        Column(
          children: <Widget>[
            const Text("Phone contact:"),
            Text("Name: ${_phoneContact!.fullName}"),
            Text(
                "Phone: ${_phoneContact!.phoneNumber!.number} (${_phoneContact!.phoneNumber!.label})")
          ],
        ),

      if (_contact != null) Text(_contact!),
      ElevatedButton(
        child: const Text("pick phone contact"),
        onPressed: () async {
          final PhoneContact contact =
          await FlutterContactPicker.pickPhoneContact();
          print(contact);
          setState(() {
            _phoneContact = contact;
          });
        },
      ), */
      ElevatedButton(
        child: const Text("pick a contact for video call"),
        onPressed: () async {
          final FullContact contact =
          (await FlutterContactPicker.pickFullContact());
          setState(() {
            _contact = contact.toString();
            int x = _contact!.indexOf('+');
            //print(x);
            String half = _contact!.substring(x);
            //print(half);
            int y = half.indexOf('}');
            //print(y);
            String num1 = _contact!.substring(x, x + y);
            num1.replaceAll(' ', '');
            //print(num1);
            FlutterLaunch.launchWhatsapp(
                phone: num1, message: "");
          });
        },
      ),


    ];
  }
}