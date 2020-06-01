import 'package:flutter/material.dart';

class Neumorphic7App extends StatefulWidget {
  @override
  _Neumorphic7AppState createState() => _Neumorphic7AppState();
}

class _Neumorphic7AppState extends State<Neumorphic7App> {
  bool ispressed = false;
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

  bool ispressed1 = false;
  void createTrue1(PointerDownEvent event) {
    setState(() {
      ispressed1 = true;
    });
  }

  void createFalse1(PointerUpEvent event) {
    setState(() {
      ispressed1 = false;
    });
  }

  bool ispressed2 = false;
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

  bool ispressed3 = false;
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

  bool ispressed4 = false;
  void createTrue4(PointerDownEvent event) {
    setState(() {
      ispressed4 = true;
    });
  }

  void createFalse4(PointerUpEvent event) {
    setState(() {
      ispressed4 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 2),
        child: ListView(children: [
          Text('SKIN - FLUME',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 6, 18, 6),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCircle(createTrue, createFalse, ispressed, 60,
                      Icons.lock_outline),
                  Container(
                      height: 130,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade100,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              offset: Offset(16, 16),
                              blurRadius: 16,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 16,
                                offset: Offset(-16, -16))
                          ])),
                  buildCircle(createTrue1, createFalse1, ispressed1, 60,
                      Icons.free_breakfast)
                ]),
          ),
          SizedBox(
            height: 40,
          ),
          buildMusicSection(
              createTrue3, createFalse3, ispressed3, 'Helix', 'Flume'),
          SizedBox(height: 5),
          buildMusicSection(createTrue4, createFalse4, ispressed4,
              'Never Be like you', 'Flume Kai'),
          SizedBox(height: 5),
          buildMusicSection(createTrue2, createFalse2, ispressed2, 'Loose it',
              'Flume ft.kong'),
          SizedBox(height: 5),
          buildMusicSection(createTrue3, createFalse3, ispressed3,
              'Numb & Getting Colder', 'Lion and band'),
          SizedBox(height: 5),
        ]),
      ),
    );
  }

  Widget buildMusicSection(
      void createTrues(PointerDownEvent event),
      void createFalses(PointerUpEvent event),
      bool ispress,
      String text,
      String subtext) {
    return Listener(
      onPointerUp: createFalses,
      onPointerDown: createTrues,
      child: ispress == false
          ? Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: <Widget>[
                        Text(text,
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        Text(text,
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 11,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(3, 3),
                            blurRadius: 3,
                          ),
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 3,
                              offset: Offset(-3, -3))
                        ],
                      ),
                      child: Icon(Icons.play_arrow,
                          size: 14, color: Colors.grey.shade600),
                    )
                  ]),
            )
          : Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.075),
                  borderRadius: BorderRadius.circular(14.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      offset: Offset(3, 3),
                      blurRadius: 3,
                    ),
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        offset: Offset(-3, -3))
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: <Widget>[
                        Text(text,
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        Text(text,
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 11,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.shade100,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(3, 3),
                            blurRadius: 3,
                          ),
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 3,
                              offset: Offset(-3, -3))
                        ],
                      ),
                      child: Icon(Icons.pause,
                          size: 14, color: Colors.white.withOpacity(.7)),
                    )
                  ]),
            ),
    );
  }

  Widget buildCircle(
      void down(PointerDownEvent event),
      upEvent(PointerUpEvent event),
      bool ispress,
      double height1,
      IconData icon1) {
    return Listener(
      onPointerDown: down,
      onPointerUp: upEvent,
      child: ispress == false
          ? Container(
              height: height1,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade100,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      offset: Offset(10, 10),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(-10, -10))
                  ]),
              child: Icon(icon1,
                  size: height1 * 0.42, color: Colors.grey.shade600),
            )
          : Container(
              height: height1,
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.white,
                      offset: Offset(10, 10),
                    ),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.075),
                        blurRadius: 10,
                        offset: Offset(-10, -10)),
                  ]),
              child:
                  Icon(icon1, size: height1 * 0.42, color: Colors.yellow[100]),
            ),
    );
  }
}
