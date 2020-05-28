import 'package:flutter/material.dart';

class Neumorphic3App extends StatefulWidget {
  @override
  _Neumorphic3AppState createState() => _Neumorphic3AppState();
}

class _Neumorphic3AppState extends State<Neumorphic3App> {
  bool ispressed = false;
  bool ispressed2 = false;
  bool ispressed3 = false;
  void createTrue(PointerDownEvent event) {
    setState(() {
      ispressed = true;
    });
  }

  void createFalse(PointerUpEvent event) {
    setState(() {
      ispressed = false;
    });
  }

  void createTrue2(PointerDownEvent event) {
    setState(() {
      ispressed2 = true;
    });
  }

  void createFalse2(PointerUpEvent event) {
    setState(() {
      ispressed2 = false;
    });
  }

  void createTrue3(PointerDownEvent event) {
    setState(() {
      ispressed3 = true;
    });
  }

  void createFalse3(PointerUpEvent event) {
    setState(() {
      ispressed3 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd91f0b),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 14, 14, 1),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30),
              Listener(
                  onPointerUp: createFalse,
                  onPointerDown: createTrue,
                  child: ispressed == true
                      ? Align(
                          child: Container(
                              height: 260,
                              width: 260,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Color(0xFFd91f0b),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(-20, -20),
                                        blurRadius: 60,
                                        color: Color(0xFFb81a09)),
                                    BoxShadow(
                                        offset: Offset(20, 20),
                                        blurRadius: 60,
                                        color: Color(0xFFfa240d))
                                  ])),
                        )
                      : Align(
                          child: Container(
                              height: 270,
                              width: 270,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Color(0xFFd91f0b),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 60,
                                        offset: Offset(20, 20),
                                        color: Color(0xFFb81a09)),
                                    BoxShadow(
                                        blurRadius: 60,
                                        offset: Offset(-20, -20),
                                        color: Color(0xFFfa240d))
                                  ])),
                        ))
            ],
          )),
    );
  }
}
