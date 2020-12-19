import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HttpApp extends StatefulWidget {
  @override
  _HttpAppState createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {
  Map data; //yo api ma data bitra ko bitra so
  List userdata;
  Future getdata() async {
    http.Response response =
        await http.get('https://reqres.in/api/users?page=1');
    //https://api.github.com/users/sabil62
    //https://jsonplaceholder.typicode.com/todos/
    data = json.decode(response.body);
    setState(() {
      userdata = data["data"];
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
        itemCount: userdata == null ? 0 : userdata.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: new CircleAvatar(
                backgroundImage: NetworkImage(userdata[index]["avatar"])),
            title: new Row(children: [
              Text(userdata[index]["first_name"]),
              SizedBox(width: 6),
              Text(userdata[index][
                  "last_name"]) // or child: Text("${userdata[index]["first_name"]} ${userdata[index]["last_name"]}")
            ]),
            subtitle: new Text(userdata[index]["email"]),
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return ImageShow(
                    userdata[index]["id"],
                    userdata[index]["avatar"],
                    userdata[index]["first_name"],
                    userdata[index]["last_name"],
                    userdata[index]["email"]);
              }));
            },
          );
        },
      ),
    );
  }
}

class ImageShow extends StatelessWidget {
  int id;
  String image;
  String firstName;
  String lastName;
  String email;
  ImageShow(this.id, this.image, this.firstName, this.lastName, this.email);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text(firstName)),
      body: ListView(children: <Widget>[
        SizedBox(height: 30),
        Align(
          child: Container(
            height: 200,
            width: 200,
            // decoration: new BoxDecoration(
            //     borderRadius: BorderRadius.circular(50),
            //     border: Border.all(color: Colors.black45, width: 3),
            //     image: new DecorationImage(
            //         image: new NetworkImage(image), fit: BoxFit.fill)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(120),
              child: Hero(
                tag: 'heroAnimation',
                child: Image(
                  fit: BoxFit.cover,
                  image: new NetworkImage(image),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
            child: Text(
          firstName + " " + lastName,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        )),
        SizedBox(height: 15),
        Center(child: Text(email))
      ]),
    );
  }
}
