import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List data;
  List<Customer> customerBackup = List<Customer>();
  List<Customer> customerActualDisplay = List<Customer>();

  Future getdata() async {
    http.Response response =
        await http.get('https://jsonplaceholder.typicode.com/users');

    var customers = List<Customer>();

    data = json.decode(response.body);
    print(data);
    for (var u in data) {
      customers.add(Customer.fromJson(u));
    }

    return customers;
  }

  @override
  void initState() {
    getdata().then((value) {
      setState(() {
        customerBackup.addAll(value);
        customerActualDisplay = customerBackup;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search')),
      body: ListView.builder(
          itemCount: customerActualDisplay.length + 1,
          itemBuilder: (context, index) {
            return index == 0
                ? searchbar()
                : Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          color: Colors.yellow[50]),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              customerActualDisplay[index - 1].name,
                              style: bold,
                            ),
                            Text(
                              customerActualDisplay[index - 1].username,
                              style: light,
                            ),
                            Text(
                              customerActualDisplay[index - 1].website,
                              style: light,
                            )
                          ]),
                    ),
                  );
          }),
    );
  }

  Widget searchbar() {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search Here',
          prefixIcon: Icon(Icons.search, color: Colors.black.withOpacity(.5))),
      onChanged: (valueWritten) {
        valueWritten = valueWritten.toLowerCase();
        setState(() {
          customerActualDisplay = customerBackup.where((element) {
            return element.name.toLowerCase().contains(valueWritten) ||
                element.username.toLowerCase().contains(valueWritten) ||
                element.website.toLowerCase().contains(valueWritten);
          }).toList();
        });
      },
    );
  }
}

//this is the class for storing json values, it is efficient
class Customer {
  String name;
  String username;
  String website;
  Customer(this.name, this.username, this.website);
  Customer.fromJson(Map json) {
    name = json['name'];
    username = json['username'];
    website = json['website'];
  }
}

TextStyle bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(.75));
TextStyle light = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black.withOpacity(.65));
