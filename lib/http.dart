import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HttpApp extends StatefulWidget {
  @override
  _HttpAppState createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {
  List data;
  Future getdata() async {
    http.Response response = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
        headers: {"Accept": "application/json"});
    //http.Response response= await http.get(Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),headers: {"Accept":"application/json"});
    setState(() {
      data = json.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('Http data')),
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: new Text(data[index]["title"]),
              leading: new Text(data[index]["id"]),
              trailing: new Icon(Icons.closed_caption, color: Colors.redAccent),
            );
          }),
    );
  }
}
