import 'package:flutter/material.dart';

class Neumorphism5App extends StatefulWidget {
  @override
  _Neumorphism5AppState createState() => _Neumorphism5AppState();
}

class _Neumorphism5AppState extends State<Neumorphism5App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe6ebf2),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 60, 0, 0),
        child: Column(
          children: <Widget>[
            Container(
              height: 340,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                buildNeumorphicContainer(Icons.assignment),
                buildNeumorphicContainer(Icons.lightbulb_outline)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildNeumorphicContainer(IconData icondata) {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Stack(children: [
      Container(
        height: 320,
        width: 220,
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: Color(0xFFe6ebf2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.2),
                offset: Offset(13, 13),
                blurRadius: 16,
              ),
              BoxShadow(
                  color: Colors.white.withOpacity(.7),
                  offset: Offset(-13, -13),
                  blurRadius: 16)
            ]),
        child: Column(children: [
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Text('  HRTBT',
                  style: TextStyle(
                      color: Colors.deepPurple[900].withOpacity(.5),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      fontSize: 27)),
              SizedBox(width: 75),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFe6ebf2),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(5, 5),
                        blurRadius: 7,
                      ),
                      BoxShadow(
                          color: Colors.white.withOpacity(.7),
                          offset: Offset(-5, -5),
                          blurRadius: 7)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icondata,
                    size: 20,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 6, 0, 12),
            child: Column(children: [
              Text('5303  6084',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.4))),
              Text('2402  3649',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.4)))
            ]),
          )
        ]),
      ),
      Positioned(
          bottom: 16,
          right: 16,
          child: Align(
            child: Container(
              height: 25,
              width: 50,
              decoration: BoxDecoration(
                  color: Color(0xFFe6ebf2),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      offset: Offset(6, 6),
                      blurRadius: 7,
                    ),
                    BoxShadow(
                        color: Colors.white.withOpacity(.7),
                        offset: Offset(-7, -7),
                        blurRadius: 9)
                  ]),
              child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(
                            .1), //                   <--- border color
                        width: 1.0,
                      ),
                    ),
                  )),
            ),
          )),
      Positioned(
          bottom: 0,
          left: 0,
          child: ClipPath(
            clipper: Triangle(),
            child: Container(
                height: 140,
                width: 110,
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [Colors.orange[200], Colors.deepOrange[200]],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight))),
          ))
    ]),
  );
}

class Triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.9);
    path.quadraticBezierTo(0, size.height, size.width * 0.1, size.height);

    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.5, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
