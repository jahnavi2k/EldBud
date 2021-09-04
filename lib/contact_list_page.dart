import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:contacts_service/contacts_service.dart';

const iOSLocalizedLabels = false;
class ContactListListPage extends StatefulWidget {
  @override
  _ContactListListPageState createState() => _ContactListListPageState();
}

class _ContactListListPageState extends State<ContactListListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCBCDE7),
      appBar: AppBar(
        backgroundColor: Color(0xff7283B3),
        elevation: 50.0,
        actions: [
          IconButton(
            onPressed: () async {
                Navigator.of(context).pushNamed("/add");

            },
            icon: Icon(
              Icons.add,
            ),
          )
        ],
      ),

    );
  }
}
  class AddContactPage extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => _AddContactPageState();
  }

  class _AddContactPageState extends State<AddContactPage> {
    Contact contact = Contact();
    PostalAddress address = PostalAddress(label: "Home");
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xffCBCDE7),
        appBar: AppBar(
          backgroundColor: Color(0xff7283B3),
          title: Text("Add a contact"),
          ),
          body: Container(
            padding: EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'First name',
                        labelStyle: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mon',
                        ),
                    ),
                    onSaved: (v) => contact.givenName = v,
                   ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 0.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Last name',
                        labelStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mon',
                        ),
                      ),
                      onSaved: (v) => contact.familyName = v,
                     ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 0.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Phone',
                        labelStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mon',
                        ),
                      ),
                      onSaved: (v) =>
                      contact.phones = [Item(label: "mobile", value: v)],
                      keyboardType: TextInputType.phone,
                     ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(260.0, 30.0, 0.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.save();
                        contact.postalAddresses = [address];
                        ContactsService.addContact(contact);
                          final snackBar = SnackBar(
                            content: const Text(
                                'Yay!  Your Contact Is Saved.',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'Osw',

                              ),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Mon',

                        ),
                    ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(40.0,60.0),
                        primary: Color(0xFF07224C),
                        onPrimary: Color(0XFFFFFFFF),
                        shadowColor: Colors.grey[100],
                        elevation: 50.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                 ],
               ),
             ),
           ),
        );
      }
  }
