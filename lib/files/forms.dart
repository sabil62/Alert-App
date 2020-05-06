import 'package:flutter/material.dart';

class FormApp extends StatefulWidget {
  @override
  _FormAppState createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  //formkey
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  //strings
  String name;
  String email;
  String password;
  String phone, url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
            child: Form(
          key: _formkey,
          child: Column(children: [
            buildName(),
            SizedBox(height: 12),
            buildEmail(),
            SizedBox(height: 12),
            buildPassword(),
            SizedBox(height: 12),
            buildUrl(),
            SizedBox(height: 12),
            buildPhone(),
            RaisedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (!_formkey.currentState.validate()) {
                    return;
                  }
                  _formkey.currentState.save();
                })
          ]),
        )),
      ),
    );
  }

  Widget buildName() {
    return TextFormField(
      decoration: new InputDecoration(labelText: 'Name'),
      maxLength: 32,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please fill all';
        }
      },
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget buildEmail() {
    return TextFormField(
      decoration: new InputDecoration(labelText: 'Email'),
      maxLength: 32,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please fill all';
        }
        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget buildPassword() {
    return TextFormField(
      decoration: new InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please fill all';
        }
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget buildPhone() {
    return TextFormField(
      decoration: new InputDecoration(labelText: 'Phone'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'please enter phone';
        }
      },
      onSaved: (String value) {
        phone = value;
      },
    );
  }

  Widget buildUrl() {
    return TextFormField(
      decoration: new InputDecoration(labelText: 'Url'),
      keyboardType: TextInputType.url,
      validator: (String value) {
        if (value.isEmpty) {
          return 'please enter url';
        }
      },
      onSaved: (String value) {
        url = value;
      },
    );
  }
}

//  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();

//   String _name;
//   String _email;
//   String _password;
// Widget buildName(){
//   return TextFormField(
//     decoration:new InputDecoration(lalbelText:'Name'),
//     maxlength:25,
//     validator:(String value){if(value.isEmpty){
//       return 'Enter the Name field';
//     }}
//     onSaved: (String value){
//       _name =value;
//     },
//   );
// }
