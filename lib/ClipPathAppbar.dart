import 'package:flutter/material.dart';

TextStyle stylesss =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700);

class ClipPathAppBar extends StatefulWidget {
  @override
  _ClipPathAppBarState createState() => _ClipPathAppBarState();
}

class _ClipPathAppBarState extends State<ClipPathAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          simpleClipPath("Clip Path Appbar"),
          triangleClipPath("Triangle"),
          quadrilateral("Another Triangle"),
          SizedBox(height: 30),
          circleSimple("Simple Circle"),
          SizedBox(height: 30),
        ]),
      ),
    );
  }

  Widget simpleClipPath(String text) {
    return ClipPath(clipper: ClipperSimple(), child: buildContainer(text));
  }

  Widget triangleClipPath(String text) {
    return ClipPath(clipper: ClipperTriangle(), child: buildContainer(text));
  }

  Widget quadrilateral(String text) {
    return ClipPath(
        clipper: ClipperQuadrilateral(), child: buildContainer(text));
  }

  Widget circleSimple(String text) {
    return ClipPath(clipper: ClipperCircle(), child: buildContainer(text));
  }

  Widget buildContainer(String text) {
    return Container(
      height: 200,
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.orange, Colors.deepOrangeAccent])),
      child: Center(child: Text(text, style: stylesss)), //syless is TextStyle()
    );
  }
}

//-------------------------------------------------------------------SIMPLE CLIPPER
class ClipperSimple extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

//-------------------------------------------------------------------------TRIANGLE CLIPPER
class ClipperTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.moveTo(100, size.height - 100);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

//-------------------------------------------------------------------------------TRIANGLE 2
class ClipperQuadrilateral extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(100, 100);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

//-------------------------------------------------------------------------------TRIANGLE 2
class ClipperCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        0, size.height - 50, 50, size.height - 50); //equi to (0,150,50,150)
    path.quadraticBezierTo(size.width - 100, size.height, size.width,
        size.height - 100); //equi to (-100,200,width,100)
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

//for more
//https://medium.com/flutter-community/paths-in-flutter-a-visual-guide-6c906464dcd0
