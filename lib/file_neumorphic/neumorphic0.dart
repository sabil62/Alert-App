import 'package:alertapp/file_neumorphic/design.dart';
import 'package:flutter/material.dart';

class Neumorphic0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe6ebf2),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(children: [
          Text('Neumorphic Design',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black.withOpacity(.5),
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NeumorphicBox(
                color: Color(0xFFe6ebf2),
                iconData: Icons.wifi,
                iconSize: 35.0,
                offsetW: Offset(2, 2),
                offsetB: Offset(-2, -2),
                height1: 71,
                width1: 71,
                bLevel: 3.0,
              ),
              NeumorphicBox(
                color: Color(0xFFe6ebf2),
                iconData: Icons.lightbulb_outline,
                iconSize: 35.0,
                offsetW: Offset(2, 2),
                offsetB: Offset(-2, -2),
                height1: 71,
                width1: 71,
                bLevel: 3.0,
              ),
              NeumorphicBox(
                color: Color(0xFFe6ebf2),
                iconData: Icons.bluetooth,
                iconSize: 35.0,
                offsetW: Offset(2, 2),
                offsetB: Offset(-2, -2),
                height1: 71,
                width1: 71,
                bLevel: 3.0,
              ),
            ],
          ),
          SizedBox(height: 50),
          NeumorphicBox(
            color: Color(0xFFe6ebf2),
            iconData: Icons.pan_tool,
            iconSize: 55.0,
            offsetW: Offset(6, 6),
            offsetB: Offset(-6, -6),
            height1: 121,
            width1: 71,
            bLevel: 3.0,
          )
        ]),
      ),
    );
  }
}
