import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class SearchList extends StatefulWidget {
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  //this is for search one is for partial and other is full search
  List<Employee> emp1 = List<Employee>();
  List<Employee> empForDisplayWhole = List<Employee>();
  //this is getting from url
  List data;
  Future getdata() async {
    http.Response response =
        await http.get('https://jsonplaceholder.typicode.com/users');
    //only this war problem
    var employees = List<Employee>();
    //here no setstate given so return must be there and setstate() should be in initstate()
    data = json.decode(response.body);
    print(data);
    for (var u in data) {
      employees.add(Employee.fromJson(u));
    }
    return employees;
  }

  @override
  void initState() {
    getdata().then((value) {
      setState(() {
        emp1.addAll(value);
        empForDisplayWhole = emp1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search List')),
      body: ListView.builder(
          itemCount: empForDisplayWhole.length + 1,
          itemBuilder: (context, index) {
            return index == 0
                ? searchBar()
                : Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.yellow[50]),
                    child: Column(children: [
                      Text(
                        empForDisplayWhole[index - 1].name,
                        style: bold,
                      ),
                      Text(
                        empForDisplayWhole[index - 1].email,
                        style: light,
                      )
                    ]),
                  );
          }),
    );
  }

  searchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
      ),
      onChanged: (valueWritten) {
        valueWritten = valueWritten.toLowerCase();
        setState(() {
          empForDisplayWhole = emp1.where((element) {
            return element.name.toLowerCase().contains(valueWritten) ||
                element.email.toLowerCase().contains(valueWritten);
          }).toList();
        });
      },
    );
  }
}

//----------------------------------------This is to store information of json in class------------------------------------------
class Employee {
  String name;
  String email;
  Employee(this.name, this.email);
  //to insert json data to class

  Employee.fromJson(Map json) {
    name = json['name'];
    email = json['email'];
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
