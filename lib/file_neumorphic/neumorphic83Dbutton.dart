import 'package:flutter/material.dart';

class Neumorphic8App extends StatefulWidget {
  @override
  _Neumorphic8AppState createState() => _Neumorphic8AppState();
}

class _Neumorphic8AppState extends State<Neumorphic8App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Container(
              child: Icon(Icons.android, size: 60, color: Colors.grey[800]),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color:Colors.grey[300],//do not use this if you use linear gradient
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(10, 10),
                        color: Colors.black.withOpacity(.09)),
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(-10, -10),
                        color: Colors.white),
                  ],
                  gradient: LinearGradient(
                      colors: [
                        Colors.grey[200],
                        Colors.grey[300],
                        Colors.grey[400],
                        Colors.grey[500],
                      ],
                      begin: Alignment.topLeft,
                      stops: [0.1, 0.3, 0.6, 0.9])))),
    );
  }
}
