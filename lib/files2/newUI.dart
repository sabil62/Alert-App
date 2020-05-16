import 'package:flutter/material.dart';

class NewUiApp extends StatefulWidget {
  @override
  _NewUiAppState createState() => _NewUiAppState();
}

class _NewUiAppState extends State<NewUiApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        appBarCool(context),
        SizedBox(height: 21),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('Prevention',
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.05,
                  color: Colors.black87)),
        ),
        SizedBox(height: 5),
        buildThreeColumn(),
        SizedBox(height: 45),
        buildCoolGradientContainer(),
      ]),
    );
  }
}

//other things
Widget buildCoolGradientContainer() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: new LinearGradient(
              colors: [Colors.blue[400], Colors.purple[900]],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 2, offset: Offset(0, 4)),
            BoxShadow(
                color: Colors.black26, blurRadius: 2, offset: Offset(-1, -2))
          ]),
      child: Row(children: [
        SizedBox(width: 22),
        Image(
          image: AssetImage('assets/video.png'),
          height: 93,
        ),
        SizedBox(width: 30),
        Container(
            child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Text('Dial 555 for help',
                style: TextStyle(
                    color: Colors.yellow[50],
                    fontSize: 24,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Text('If only symptoms appear',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ))
          ],
        ))
      ]),
    ),
  );
}

Widget buildThreeColumn() {
  return Container(
    child: Table(children: [
      TableRow(children: [
        buildCircleWithLabel(
            'https://friendlystock.com/wp-content/uploads/2020/04/9-nurse-holding-digital-thermometer-cartoon-clipart.jpg',
            'Check Temperature'),
        buildCircleWithLabel(
            'https://thumbs.dreamstime.com/b/routine-actions-washing-hands-soap-water-cute-cartoon-illustration-hygiene-little-boy-dark-hair-bathroom-jpg-106217917.jpg',
            'Wash Hands'),
        buildCircleWithLabel(
            'https://previews.123rf.com/images/goodstocker/goodstocker1810/goodstocker181000427/110605671-funny-cartoon-guy-wearing-medical-mask-for-respiratory-disease-protection-cartoon-design-icon-colorf.jpg',
            'Wear Mask')
      ])
    ]),
  );
}

Widget buildCircleWithLabel(String image, String prevention) {
  return Column(children: [
    Container(
      height: 80,
      width: 80,
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 4)],
          image: new DecorationImage(
              image: NetworkImage(image), fit: BoxFit.fill)),
    ),
    SizedBox(height: 12),
    Center(
        child: Text(prevention,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)))
  ]);
}

Widget appBarCool(BuildContext context) {
  return Stack(children: [
    ClipPath(
        clipper: ClipperLowerCircle(),
        child: Container(
            height: 340,
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [Colors.blue[400], Colors.purple[900]],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight)))),
    Positioned(
        top: 5,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.table_chart,
                color: Colors.white,
                size: 26,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.81),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 26,
              )
            ],
          ),
        )),
    Positioned(
        top: 60,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            // height: 34,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 8,
                ),
                Text('Covid 19',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.1,
                        color: Colors.yellow[50])),
                SizedBox(width: MediaQuery.of(context).size.width * 0.18),
                Container(
                  height: 48,
                  width: 165,
                  decoration: new BoxDecoration(
                      color: Colors.yellow[50],
                      borderRadius: BorderRadius.circular(24)),
                  child: ListTile(
                    leading: Container(
                      height: 30,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://qph.fs.quoracdn.net/main-qimg-7c924c8ad2ee435cdf8910f410deea23'),
                      ),
                    ),
                    title: Text(
                      'USA',
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[500],
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
    Positioned(
        top: 150,
        child: Column(
          children: <Widget>[
            Text('Are you feeling sick?',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 1, 8, 2),
                child: Text(
                    'Lore sorem dorem this funcion has a return type of string but to void Are you feeliing seek?',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.3,

                        // fontWeight: FontWeight.w400,
                        color: Colors.white60)),
              ),
            ),
          ],
        )),
    Positioned(
        top: 245,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 44,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red[700]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 13),
                        Icon(Icons.phone, color: Colors.white, size: 20),
                        SizedBox(width: 20),
                        Text(
                          'Call Now',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 44,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[600]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 13),
                        Icon(Icons.chat_bubble, color: Colors.white, size: 20),
                        SizedBox(width: 20),
                        Text(
                          'Call Now',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        )),
  ]);
}

//EITHER USE THIS OR OTHER CLIPPER

class ClipperLowerUpCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.5, size.height - 16, size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipperLowerCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 25);
    path.quadraticBezierTo(0, size.height, 40, size.height);
    path..lineTo(size.width - 40, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 25);

    path.lineTo(size.width, 0);
    return path;
    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
    //throw UnimplementedError();
  }
}
