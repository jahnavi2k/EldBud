import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';



class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Contacts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactList(title: 'Flutter Contacts'),
    );
  }
}

class _ContactList extends StatefulWidget {
  _ContactList({required Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ContactList createState() => _ContactList();
}

