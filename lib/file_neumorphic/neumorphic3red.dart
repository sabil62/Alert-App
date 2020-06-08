import 'package:flutter/material.dart';

class Neumorphic3App extends StatefulWidget {
  @override
  _Neumorphic3AppState createState() => _Neumorphic3AppState();
}

class _Neumorphic3AppState extends State<Neumorphic3App> {
  //Without using ispressed here, you can create seperate stateful class which contains listener, then using constructor you can call the Container required,(for the type of ispressed you want)//trust this is very efficient
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
                              height: 240,
                              width: 240,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(46.0),
                                  color: Color(0xFFd91f0b),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(-30, -30),
                                        blurRadius: 60,
                                        color: Color(0xFFb81a09)),
                                    BoxShadow(
                                        offset: Offset(22, 23),
                                        blurRadius: 60,
                                        color: Color(0xFFfa240d))
                                  ])),
                        )
                      : Align(
                          child: Container(
                              height: 240,
                              width: 240,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(46.0),
                                  color: Color(0xFFd91f0b),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 40,
                                        offset: Offset(30, 30),
                                        color: Color(0xFFb81a09)),
                                    BoxShadow(
                                        blurRadius: 40,
                                        offset: Offset(-22, -23),
                                        color: Color(0xFFfa240d))
                                  ])),
                        )),
              //now another Listener
              SizedBox(height: 60),
              Listener(
                  onPointerUp: createFalse2,
                  onPointerDown: createTrue2,
                  child: ispressed2 == false
                      ? Container(
                          height: 260,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFd91f0b),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 40,
                                    offset: Offset(30, 30),
                                    color: Colors.black.withOpacity(.25)),
                                BoxShadow(
                                    blurRadius: 40,
                                    offset: Offset(-30, -30),
                                    color: Color(0xFFfa240d))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(46.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFd91f0b),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 42,
                                        offset: Offset(24, 24),
                                        color: Colors.black.withOpacity(.3)),
                                    BoxShadow(
                                        blurRadius: 42,
                                        offset: Offset(-20, -20),
                                        color: Color(0xFFfa240d))
                                  ]),
                            ),
                          ),
                        )
                      : Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: Color(0xFFd91f0b),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 42,
                                  offset: Offset(-26, -26),
                                  color: Color(0xFFb81a09),
                                ),
                                BoxShadow(
                                    blurRadius: 42,
                                    offset: Offset(26, 26),
                                    color: Color(0xFFa240d))
                              ]),
                        )),
              SizedBox(height: 155),
              //Next widget
              ClipPath(
                  clipper: DownClipper(),
                  child: Container(
                    height: 250,
                    decoration:
                        BoxDecoration(color: Colors.red[300], boxShadow: [
                      BoxShadow(
                        blurRadius: 42,
                        offset: Offset(-26, -26),
                        color: Color(0xFFb81a09),
                      ),
                      BoxShadow(
                          blurRadius: 42,
                          offset: Offset(26, 26),
                          color: Color(0xFFa240d))
                    ]),
                  ))
            ],
          )),
    );
  }
}

class DownClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path(); // the starting point is the 0,0 position of the widget.
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.8, size.width, size.height * 0.6);
    path.lineTo(size.width, 0);
    // path.lineTo(0,
    //     size.height); // this draws the line from current point to the left bottom position of widget
    // path.lineTo(size.width,
    //     size.height); // this draws the line from current point to the right bottom position of the widget.
    // path.lineTo(size.width,
    //     0); // this draws the line from current point to the right top position of the widget
    // path.close(); // this closes the loop from current position to the starting point of widget
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
