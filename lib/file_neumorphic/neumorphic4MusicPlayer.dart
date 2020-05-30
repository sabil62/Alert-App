import 'package:flutter/material.dart';

class Neumorphic4App extends StatefulWidget {
  @override
  _Neumorphic4AppState createState() => _Neumorphic4AppState();
}

class _Neumorphic4AppState extends State<Neumorphic4App> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6ebf2),
        body: ListView(children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      child: buildCircleContainer(
                          60, Icons.arrow_back, 0xFFe6ebf2)),
                  Text('PLAYING NOW',
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Container(
                      height: 60,
                      width: 60,
                      child: buildCircleContainer(60, Icons.tune, 0xFFe6ebf2))
                ]),
          ),

          SizedBox(height: 50),
          Container(
            height: 240,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFe6ebf2),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 200 * 0.3,
                      offset: Offset(222 * 0.1, 222 * 0.1),
                      color: Colors.black.withOpacity(.16)),
                  BoxShadow(
                      blurRadius: 25,
                      offset: Offset(-22, -22),
                      color: Colors.white.withOpacity(.8))
                ]),
            child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Align(
                  child: Container(
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(100.0),
                        shape: BoxShape.circle,
                        color: Color(0xFFe6ebf2),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://storage.pixteller.com/designs/designs-images/2019-03-27/05/simple-background-backgrounds-passion-simple-1-5c9b95bd34713.png'),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 240 * 0.2,
                              offset: Offset(240 * 0.1, 240 * 0.1),
                              color: Colors.black.withOpacity(.27)),
                          BoxShadow(
                              blurRadius: 240 * 0.2,
                              offset: Offset(-240 * 0.1, -240 * 0.1),
                              color: Colors.white.withOpacity(.7))
                        ]),
                  ),
                )),
          ),
          SizedBox(height: 40),
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lose it',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.6),
                      fontSize: 36,
                      fontWeight: FontWeight.w600)),
            ),
            Text('Yong ft. Beong',
                style: TextStyle(
                    color: Colors.black.withOpacity(.4), fontSize: 20)),
          ]),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/progressbar.png',
                      ),
                      fit: BoxFit.cover),
                )),
          ),
          // Image.asset(
          //   "assets/geography.png",
          //   height: 78,
          //   // width: 64,
          // ),
          SizedBox(height: 40),
          Table(children: [
            TableRow(children: [
              buildCircleContainer(90, Icons.arrow_back_ios, 0xFFe6ebf2),
              buildCircleContainer(90, Icons.pause, 0xFF6ea1e7),
              buildCircleContainer(90, Icons.play_arrow, 0xFFe6ebf2),
            ])
          ])
        ]));
  }

  Widget buildCircleContainer(double height1, IconData icon1, int color) {
    return Listener(
      onPointerDown: createTrue,
      onPointerUp: createFalse,
      child: ispressed == false
          ? Container(
              height: height1,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(color),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: height1 * 0.2,
                        offset: Offset(height1 * 0.1, height1 * 0.1),
                        color: Colors.black.withOpacity(.22)),
                    BoxShadow(
                        blurRadius: height1 * 0.2,
                        offset: Offset(-height1 * 0.1, -height1 * 0.1),
                        color: Colors.white.withOpacity(.7))
                  ]),
              child: Icon(icon1,
                  size: height1 * 0.35, color: Colors.black.withOpacity(.5)),
            )
          : Container(
              height: height1 * 0.95,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(color),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: height1 * 0.2,
                        offset: Offset(height1 * 0.1, height1 * 0.1),
                        color: Colors.black.withOpacity(.22)),
                    BoxShadow(
                        blurRadius: height1 * 0.2,
                        offset: Offset(-height1 * 0.1, -height1 * 0.1),
                        color: Colors.white.withOpacity(.7))
                  ]),
              child: Icon(icon1,
                  size: height1 * 0.35, color: Colors.black.withOpacity(.5)),
            ),
    );
  }
}
