import 'package:flutter/material.dart';

class Tableapp extends StatefulWidget {
  @override
  _TableappState createState() => _TableappState();
}

class _TableappState extends State<Tableapp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: new Text('Table'),
        ),
        body: Table(
            border: TableBorder.all(color: Colors.black54),
            children: <TableRow>[
              TableRow(children: [
                coolTextWidget('FirstName'),
                coolTextWidget('LastName'),
                coolTextWidget('Rating')
              ]),
              TableRow(
                  decoration: new BoxDecoration(color: Colors.blue[400]),
                  children: [
                    coolTextWidget('Sergio'),
                    coolTextWidget('Aguero'),
                    coolTextWidget('5')
                  ]),
              TableRow(children: [
                coolTextWidget('Lionel'),
                coolTextWidget('messi'),
                coolTextWidget('4'),
              ]),
              TableRow(children: [
                Container(
                    height: 50,
                    child: Icon(
                      Icons.file_download,
                      color: Colors.teal,
                    )),
                Container(
                    // height: 100,
                    child: Icon(
                  Icons.mail,
                  color: Colors.red,
                  size: 80,
                )),
                Container(child: Icon(Icons.business, color: Colors.red))
              ])
            ]),
      ),
    );
  }

  Widget coolTextWidget(String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(value,
          style: new TextStyle(
              fontSize: 13,
              color: Colors.black54,
              fontWeight: FontWeight.w600)),
    );
  }
}

class Players {
  String firstname;
  String lastname;
  String ratings;
  Players(this.firstname, this.lastname, this.ratings);
}

var names = [
  Players("Kevin", "DeBryne", '5'),
  Players("Joe", "Hart", '4'),
  Players("David", "Silva", '4'),
  Players("Lionel", "Messi", '5'),
  Players("Christiano", "Ronaldo", '3'),
  Players("David", "Villa", '2')
];
