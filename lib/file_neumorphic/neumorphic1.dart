import 'package:flutter/material.dart';
import 'design2.dart';

// class Neurmorphic1App extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFe6ebf2),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: ListView(
//           children: <Widget>[
//             SizedBox(height: 12),
//             Padding(
//               padding: const EdgeInsets.all(5.0),
//               child: Container(
//                 height: 120,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: new BoxDecoration(
//                     color: Color(0xFFe6ebf2),
//                     borderRadius: BorderRadius.circular(24.0),
//                     boxShadow: [
//                       BoxShadow(
//                           offset: Offset(6, 6),
//                           color: Colors.black.withOpacity(.26),
//                           blurRadius: 7),
//                       BoxShadow(
//                           color: Colors.white.withOpacity(.7),
//                           offset: Offset(-6, -6),
//                           blurRadius: 7)
//                     ]),
//                 child: Listener(
//                     child: Row(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Icon(Icons.label_important,
//                           size: 60, color: Colors.black.withOpacity(.42)),
//                     ),
//                     SizedBox(width: MediaQuery.of(context).size.width * 0.08),
//                     Column(
//                       mainAxisAlignment:
//                           MainAxisAlignment.center, //this is important
//                       children: <Widget>[
//                         Text('Neumorphism',
//                             style: TextStyle(
//                                 fontSize: 32,
//                                 color: Colors.black.withOpacity(.35),
//                                 fontWeight: FontWeight.w600)),
//                         Text('This is new style',
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.black.withOpacity(.35),
//                                 fontWeight: FontWeight.w300)),
//                       ],
//                     )
//                   ],
//                 )),
//               ),
//             ),
//             SizedBox(height: 20),
//             Text('Neumorphic table list',
//                 style: TextStyle(
//                     color: Colors.black.withOpacity(.39),
//                     fontSize: 21,
//                     fontWeight: FontWeight.bold)),
//             SizedBox(height: 20),
//             Table(defaultColumnWidth: FixedColumnWidth(30), children: [
//               TableRow(children: [
//                 NeumorphicDesignWithListener(Offset(2, 2), Offset(-2, -2),
//                     Icons.assignment, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//                 NeumorphicDesignWithListener(Offset(2, 2), Offset(-2, -2),
//                     Icons.brightness_auto, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//                 NeumorphicDesignWithListener(Offset(2, 2), Offset(-2, -2),
//                     Icons.switch_video, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//               ]),
//               TableRow(children: [
//                 NeumorphicDesignWithListener(Offset(3, 3), Offset(-3, -3),
//                     Icons.video_call, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//                 NeumorphicDesignWithListener(Offset(3, 3), Offset(-3, -3),
//                     Icons.monetization_on, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//                 NeumorphicDesignWithListener(Offset(3, 3), Offset(-3, -3),
//                     Icons.dialer_sip, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//               ]),
//               TableRow(children: [
//                 NeumorphicDesignWithListener(Offset(4, 4), Offset(-4, -4),
//                     Icons.phonelink, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//                 NeumorphicDesignWithListener(Offset(4, 4), Offset(-4, -4),
//                     Icons.trending_down, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//                 NeumorphicDesignWithListener(
//                     Offset(4, 4),
//                     Offset(-4, -4),
//                     Icons.format_align_center,
//                     33.0,
//                     90.0,
//                     60.0,
//                     Color(0xFFe6ebf2)),
//               ]),
//               TableRow(children: [
//                 NeumorphicDesignWithListener(Offset(5, 5), Offset(-5, -5),
//                     Icons.dialpad, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//                 NeumorphicDesignWithListener(Offset(5, 5), Offset(-5, -5),
//                     Icons.trip_origin, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//                 NeumorphicDesignWithListener(Offset(5, 5), Offset(-5, -5),
//                     Icons.headset_mic, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
//               ])
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Neurmorphic1App extends StatefulWidget {
  @override
  _Neurmorphic1AppState createState() => _Neurmorphic1AppState();
}

class _Neurmorphic1AppState extends State<Neurmorphic1App> {
  bool ispressed = true;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe6ebf2),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    color: Color(0xFFe6ebf2),
                    borderRadius: BorderRadius.circular(24.0),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(6, 6),
                          color: Colors.black.withOpacity(.26),
                          blurRadius: 7),
                      BoxShadow(
                          color: Colors.white.withOpacity(.7),
                          offset: Offset(-6, -6),
                          blurRadius: 7)
                    ]),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.label_important,
                          size: 60, color: Colors.black.withOpacity(.42)),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, //this is important
                      children: <Widget>[
                        Text('Neumorphism',
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.black.withOpacity(.35),
                                fontWeight: FontWeight.w600)),
                        Text('This is new style',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(.35),
                                fontWeight: FontWeight.w300)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFe6ebf2),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(7, 7),
                          color: Colors.black.withOpacity(.27),
                          blurRadius: 7),
                      BoxShadow(
                          color: Colors.white.withOpacity(.7),
                          offset: Offset(-7, -7),
                          blurRadius: 7)
                    ]),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFe6ebf2),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(7, 7),
                          color: Colors.black.withOpacity(.27),
                          blurRadius: 7),
                      BoxShadow(
                          color: Colors.white.withOpacity(.7),
                          offset: Offset(-7, -7),
                          blurRadius: 7)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(28.0), //only padding working
                  child: Container(
                    height: 100, //this height not working
                    // width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe6ebf2),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(7, 7),
                              color: Colors.black.withOpacity(.27),
                              blurRadius: 7),
                          BoxShadow(
                              color: Colors.white.withOpacity(.7),
                              offset: Offset(-7, -7),
                              blurRadius: 7)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Container(
                        // height: 240,
                        // width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFe6ebf2),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(7, 7),
                                  color: Colors.black.withOpacity(.27),
                                  blurRadius: 7),
                              BoxShadow(
                                  color: Colors.white.withOpacity(.7),
                                  offset: Offset(-7, -7),
                                  blurRadius: 7)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Container(
                            height: 40,
                            // width: MediaQuery.of(context).size.width,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFe6ebf2),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(9, 9),
                                      color: Colors.black.withOpacity(.29),
                                      blurRadius: 9),
                                  BoxShadow(
                                      color: Colors.white.withOpacity(.9),
                                      offset: Offset(-9, -9),
                                      blurRadius: 9)
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 260,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFe6ebf2),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(7, 7),
                        color: Colors.black.withOpacity(.27),
                        blurRadius: 7),
                    BoxShadow(
                        color: Colors.white.withOpacity(.7),
                        offset: Offset(-7, -7),
                        blurRadius: 7)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(44.0),
                child: Container(
                  height: 40,
                  // width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFe6ebf2),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(-7, -7),
                            color: Colors.black.withOpacity(.27),
                            blurRadius: 12),
                        BoxShadow(
                            color: Colors.white.withOpacity(.7),
                            offset: Offset(7, 7),
                            blurRadius: 12)
                      ]),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Neumorphic table list',
                style: TextStyle(
                    color: Colors.black.withOpacity(.39),
                    fontSize: 21,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Table(defaultColumnWidth: FixedColumnWidth(30), children: [
              TableRow(children: [
                NeumorphicDesignWithListener(Offset(2, 2), Offset(-2, -2),
                    Icons.assignment, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
                NeumorphicDesignWithListener(Offset(2, 2), Offset(-2, -2),
                    Icons.brightness_auto, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
                NeumorphicDesignWithListener(Offset(2, 2), Offset(-2, -2),
                    Icons.switch_video, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
              ]),
              TableRow(children: [
                NeumorphicDesignWithListener(Offset(3, 3), Offset(-3, -3),
                    Icons.video_call, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
                NeumorphicDesignWithListener(Offset(3, 3), Offset(-3, -3),
                    Icons.monetization_on, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
                NeumorphicDesignWithListener(Offset(3, 3), Offset(-3, -3),
                    Icons.dialer_sip, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
              ]),
              TableRow(children: [
                NeumorphicDesignWithListener(Offset(4, 4), Offset(-4, -4),
                    Icons.phonelink, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
                NeumorphicDesignWithListener(Offset(4, 4), Offset(-4, -4),
                    Icons.trending_down, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
                NeumorphicDesignWithListener(
                    Offset(4, 4),
                    Offset(-4, -4),
                    Icons.format_align_center,
                    33.0,
                    90.0,
                    60.0,
                    Color(0xFFe6ebf2)),
              ]),
              TableRow(children: [
                NeumorphicDesignWithListener(Offset(5, 5), Offset(-5, -5),
                    Icons.dialpad, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
                NeumorphicDesignWithListener(Offset(5, 5), Offset(-5, -5),
                    Icons.trip_origin, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
                NeumorphicDesignWithListener(Offset(5, 5), Offset(-5, -5),
                    Icons.headset_mic, 33.0, 90.0, 60.0, Color(0xFFe6ebf2)),
              ])
            ]),
          ],
        ),
      ),
    );
  }
}
