import 'package:flutter/material.dart';

class GreenApp extends StatefulWidget {
  @override
  _GreenAppState createState() => _GreenAppState();
}

class _GreenAppState extends State<GreenApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: Icon(Icons.alarm_off, color: Colors.green)),
        backgroundColor: Colors.grey[200],
        body: ListView(
          children: <Widget>[
            Container(
                child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: <Widget>[],
            ))
          ],
        ));
  }

  Widget buildContainers(String text, int number) {
    return Container(
      height: 120,
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white60,
          boxShadow: [
            BoxShadow(
                color: Colors.white30, blurRadius: 4, offset: Offset(0, 3))
          ]),
      child: Column(children: [
        //1st row
        Container(
            height: 30,
            child: Row(
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.brown, child: Text('image')),
                Text(
                  text,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ],
            )),
        SizedBox(height: 10),
        //2nd row
        Container(
            height: 100, //this
            child: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  child: Column(children: [
                    Text(
                      number.toString(),
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 8),
                    Text('People',
                        style: TextStyle(color: Colors.grey, fontSize: 8))
                  ]),
                ),
                //-----------------------this is supposed to be a oscilloscope
                Container(
                    child: Icon(
                  Icons.clear_all,
                  color: Colors.black38,
                  size: 54,
                ))
              ],
            )),
      ]),
    );
  }
}
