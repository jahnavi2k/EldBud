import 'package:flutter/material.dart';

void main() => runApp(ShowSnackBarDemo());

class ShowSnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coflutter - Dismiss Keyboard',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Coflutter - Dismiss Keyboard'),
          backgroundColor: const Color(0xffae00f0),
        ),
        body: DismissKeyboardTutorialScreen(),
      ),
    );
  }
}

class DismissKeyboardTutorialScreen extends StatefulWidget {
  @override
  _DismissKeyboardTutorialScreenState createState() =>
      _DismissKeyboardTutorialScreenState();
}

class _DismissKeyboardTutorialScreenState
    extends State<DismissKeyboardTutorialScreen> {
  late FocusNode focusNode ;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();
    focusNode.addListener(() {
      print('Listener');
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              autofocus: true,
              focusNode: focusNode,
            ),
          ),
          RaisedButton(
            onPressed: () {
              showKeyboard();
            },
            child: Text('Show Keyboard'),
          ),
          RaisedButton(
            onPressed: () {
              dismissKeyboard();
            },
            child: Text('Dismiss Keyboard'),
          ),
        ],
      ),
    );
  }

  void showKeyboard() {
    focusNode.requestFocus();
  }

  void dismissKeyboard() {
    focusNode.unfocus();
  }
}