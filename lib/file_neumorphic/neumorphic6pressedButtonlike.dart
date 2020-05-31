import 'package:flutter/material.dart';
import '00BenchmarkForBoxdecoration.dart';

class Neumorphic6App extends StatefulWidget {
  @override
  _Neumorphic6AppState createState() => _Neumorphic6AppState();
}

class _Neumorphic6AppState extends State<Neumorphic6App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(children: [
        buildPressedButton(),
        buildPressedButton(),
        buildPressedButtonWithIcons(Icons.do_not_disturb),
        buildPressedButtonWithIcons(Icons.local_dining),
        buildPressedMyOwn(Icons.apps),
        buildPressedMyOwn(Icons.unfold_more)
      ]),
    );
  }
}

Widget buildPressedButton() {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
      height: 40,
      decoration: invertDecoration,
    ),
  );
}

Widget buildPressedButtonWithIcons(IconData icondata) {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.075),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
                color: Colors.white,
                offset: Offset(-3, -3),
                blurRadius: 10,
                spreadRadius: -10)
          ]),
      child: Icon(
        icondata,
        size: 20,
        color: Colors.grey.shade600,
      ),
    ),
  );
}

//this is my proposed one
Widget buildPressedMyOwn(IconData icondat) {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.12),
                offset: Offset(-10, -10),
                blurRadius: 10,
                spreadRadius: -10),
            BoxShadow(
                color: Colors.white,
                offset: Offset(10, 10),
                blurRadius: 10,
                spreadRadius: -10)
          ]),
      child: Icon(icondat, size: 40, color: Colors.grey.shade600),
    ),
  );
}
