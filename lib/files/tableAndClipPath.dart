import 'package:flutter/material.dart';

class TableAndClipPathApp extends StatefulWidget {
  @override
  _TableAndClipPathAppState createState() => _TableAndClipPathAppState();
}

class _TableAndClipPathAppState extends State<TableAndClipPathApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        buildAppBar('Beautiful Widgets'),
        SizedBox(
          height: 20,
        ),
        buildTable1()
      ]),
    );
  }

  Widget buildAppBar(String text) {
    return ClipPath(
        clipper: ClipBottomRounded(),
        child: Container(
          height: 200,
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [Color(0xff6DC8F3), Color(0xff73A1F9)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight)),
          child: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    wordSpacing: 1)),
          ),
        ));
  }

  Widget buildTable1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        children: [
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.stars,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.stay_current_landscape,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.stay_primary_landscape,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.settings_backup_restore,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
          ]),
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.alarm,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.alarm_add,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.alarm_off,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.alarm_on,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
          ]),
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.time_to_leave,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.timeline,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.timer,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.train,
                size: 42,
                color: Colors.blue[600],
              ),
            ),
          ])
        ],
      ),
    );
  }
}

class ClipBottomRounded extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(100, size.height, 200, size.height - 20);
    path.lineTo(198, size.height - 20);
    path.quadraticBezierTo(
        size.width * 0.75, size.height - 40, size.width, size.height);
    // path.lineTo(size.width - 42, size.height - 15);
    // path.quadraticBezierTo(
    //     size.width - 15, size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
