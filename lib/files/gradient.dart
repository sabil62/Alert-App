import 'package:flutter/material.dart';

class GradientApp extends StatefulWidget {
  @override
  _GradientAppState createState() => _GradientAppState();
}

class _GradientAppState extends State<GradientApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('Cool UI gradients')),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return buildCoolUiGradient(
              items[index].name,
              items[index].categories,
              items[index].rating,
              items[index].startColor,
              items[index].endColor,
            );
          }),
    );
  }

  Widget buildCoolUiGradient(String name, String categories, double rating,
      Color startColor, Color endColor) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 150,
            
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                    colors: [startColor, endColor],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight),
                boxShadow: [
                  BoxShadow(
                      color: endColor, blurRadius: 13, offset: Offset(0, 6))
                ]),
          ),
          Positioned(
            right: 0,
            child: ClipPath(
              clipper: ClipLeftHalfCircle(),
              child: Container(
                height: 150,
                width: 110,
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white30, endColor],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                ),
              ),
            ),
          ),
          Positioned.fill(
              child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.asset(
                  "assets/icon.png",
                  height: 64,
                  width: 64,
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 15),
                      Text(
                        categories,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      howMuchRating(rating),
                    ],
                  ))
            ],
          ))
        ],
      ),
    );
  }

  Widget howMuchRating(double stars) {
    return Row(
        children: List.generate(stars.floor(), (index) {
      return Icon(Icons.star, color: Colors.amber[400]);
    }));
  }
}

class ClipLeftHalfCircle extends CustomClipper<Path> {
  var radius = 50;
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 24, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 24);
    path.lineTo(size.width, 24);
    path.quadraticBezierTo(size.width, 0, size.width - 24, 0);
    path.lineTo(size.width - 4,
        0); //this -4 is done because above already width-24 included
    path.quadraticBezierTo(0, 0, 0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class RestaurantInfo {
  String name;
  String categories;
  double rating;
  Color startColor, endColor, gradientColorstart;
  RestaurantInfo(
    this.name,
    this.startColor,
    this.endColor,
    this.rating,
    this.categories,
  );
}

var items = [
  RestaurantInfo(
    "Dubai Mall Food Court",
    Color(0xff6DC8F3),
    Color(0xff73A1F9),
    4.4,
    "Cosy . Casual . Good for Kids",
  ),
  RestaurantInfo(
    'Hamriyah Food Court',
    Color(0xffFFB157),
    Color(0xffFFA057),
    3.7,
    'All you can eat · Casual · Groups',
  ),
  RestaurantInfo(
    'Gate of Food Court',
    Color(0xffFF5B95),
    Color(0xffF8556D),
    4.5,
    'Casual · Groups',
  ),
  RestaurantInfo(
    'Express Food Court',
    Color(0xffD76EF5),
    Color(0xff8F7AFE),
    4.1,
    'Casual · Good for kids · Delivery',
  ),
  RestaurantInfo(
    'BurJuman Food Court',
    Color(0xff42E695),
    Color(0xff3BB2B8),
    4.2,
    'Dubai · In BurJuman',
  ),
  RestaurantInfo(
    'Honkong Food Bar',
    Color(0xfff7b733),
    Color(0xfffc4a1a),
    4.2,
    'Ktm · In Baneshwor',
  ),
  RestaurantInfo(
    'Yes Food Court',
    Color(0xff0f9b0f),
    Color(0xFF000000),
    4.1,
    'Casual · Good for kids · Delivery',
  ),
  RestaurantInfo(
    'King Quality Food',
    Color(0xFF434343),
    Color(0xFF000000),
    4.1,
    'Casual · Good for kids · Delivery',
  ),
];
