import 'package:flutter/material.dart';

class Neumorphic2App extends StatefulWidget {
  @override
  _Neumorphic2AppState createState() => _Neumorphic2AppState();
}

class _Neumorphic2AppState extends State<Neumorphic2App> {
  bool ispressed = false;
  bool ispressed2 = false;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF55b9f3),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 15, 18, 1),
        child: ListView(children: [
          SizedBox(height: 45),
          Listener(
            onPointerDown: createTrue,
            onPointerUp: createFalse,
            child: ispressed == true
                ? Container(
                    //better wrap this in container
                    height: 120,
                    decoration: BoxDecoration(
                        color: Color(0xFF99b9f3).withOpacity(.5),
                        borderRadius: BorderRadius.circular(24.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 30,
                              offset: Offset(-15, -15),
                              color: Colors.black.withOpacity(.2)),
                        ]),
                  )
                : Container(
                    height: 120,
                    decoration: BoxDecoration(
                        color: Color(0xFF55b9f3),
                        borderRadius: BorderRadius.circular(24.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 30,
                              offset: Offset(-15, -15),
                              color: Colors.lightBlue[200].withOpacity(.8)),
                          BoxShadow(
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              color: Colors.black.withOpacity(.2)),
                        ]),
                  ),
          ),
          SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              //this align makes container width work(else width is nothing)
              child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Color(0xFF55b9f3),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(-21, -21),
                          color: Colors.lightBlue[200].withOpacity(.8),
                        ),
                        BoxShadow(
                            blurRadius: 30,
                            offset: Offset(21, 21),
                            color: Colors.black.withOpacity(.2))
                      ])),
            ),
          ),
          SizedBox(height: 50),
          Align(
            child: Container(
              height: 270,
              width: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(140.0)),
                color: Color(0xFF55b9f3),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    offset: Offset(-24, -24),
                    color: Colors.lightBlue[200].withOpacity(.8),
                  ),
                  BoxShadow(
                      blurRadius: 30,
                      offset: Offset(23, 23),
                      color: Colors.black.withOpacity(.2)),
                ],
              ),
              child: Listener(
                  onPointerUp: createFalse2,
                  onPointerDown: createTrue2,
                  child: ispressed2 == false
                      ? Icon(Icons.remove_red_eye,
                          size: 160, color: Colors.blue.withOpacity(.78))
                      : Icon(
                          Icons.email,
                          size: 130,
                          color: Colors.red[300],
                        )),
            ),
          ),
          SizedBox(height: 160)
        ]),
      ),
    );
  }
}
