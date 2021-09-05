import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class PhoneCall extends StatefulWidget {
  @override
  _PhoneCallState createState() => _PhoneCallState();
}

class _PhoneCallState extends State<PhoneCall> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(text: '');
  }

  Future<void>? _launched;
  String _phone = '';

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value){
                    if(value!.length != 10){
                      return 'Enter a valid Mobile Number';
                    }
                  },
                  controller: _controller,
                  onChanged: (value) {
                    setState(() {
                      _phone = value;
                    });
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Enter a 10-digit mobile number :)',
                    labelStyle: TextStyle(
                      fontSize: 24.0,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mon',
                    ),
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                      fontFamily: 'Osw',
                    ),
                    counterStyle: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[800],
                      fontFamily: 'Mon',
                    ),
                    labelText: 'Mobile Number',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(290.0, 0.0, 0.0, 0.0),
                child: new ElevatedButton(
                  onPressed: () {
                    _controller.clear();
                  },
                  child: new Text(
                    'CLEAR',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Osw',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey[600],
                    onPrimary: Color(0XFFFFFFFF),
                    shadowColor: Colors.black,
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 330.0, 0.0, 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.validate() ? setState(() {
                      _launched = _makePhoneCall('tel:$_phone');
                    }) : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Invalid Entry!'),
                    ));
                  },
                  child: const Text(
                    'Make a Phone call',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Mon',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(250.0,60.0),
                    primary: Color(0xFF07224C),
                    onPrimary: Color(0XFFFFFFFF),
                    shadowColor: Colors.black,
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),


            ],
          )
        ),
      ),
    );
  }
}

