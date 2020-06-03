import 'package:flutter/material.dart';

class FoodApp extends StatefulWidget {
  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.format_align_justify,
                  size: 32, color: Colors.black.withOpacity(.6)),
              Container(
                  child: Row(
                children: <Widget>[
                  Text('Food',
                      style: TextStyle(
                          color: Colors.yellow[600],
                          fontSize: 28,
                          fontWeight: FontWeight.w700)),
                  Text('Styles',
                      style: TextStyle(
                          color: Colors.grey[600].withOpacity(.8),
                          fontSize: 24,
                          fontWeight: FontWeight.w600))
                ],
              )),
              Icon(Icons.format_indent_increase,
                  size: 32, color: Colors.black.withOpacity(.6)),
            ],
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.search, color: Colors.black.withOpacity(.4)),
                  hintText: 'Search here',
                  suffixIcon: Icon(Icons.linear_scale, size: 27),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: BorderSide(color: Colors.tealAccent[700])))),
        ),
        SizedBox(height: 20),
        Row(children: [
          food('Burger'),
          food('Pizza'),
          food('Naan'),
          food('Cake'),
          food('Wine')
        ]),
        SizedBox(height: 20),
        Container(
          width: 500,
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              buildFoodContainer('assets/icon.png', 'Cake'),
              buildFoodContainer('assets/icon.png', 'Wine'),
              buildFoodContainer('assets/icon.png', 'Bread'),
              buildFoodContainer('assets/icon.png', 'Pan Cake'),
            ],
          ),
        ),
        SizedBox(height: 21),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(38, 8, 8, 8),
            child: Container(
              height: 180,
              width: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  image: DecorationImage(
                      image: AssetImage('assets/Province4.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow.withOpacity(.5),
                    borderRadius: BorderRadius.circular(24.0)),
              ),
            ),
          ),
          Positioned(
              left: 45,
              top: 36,
              child: Icon(Icons.mail,
                  color: Colors.white.withOpacity(.78), size: 115)),
          Positioned(
              top: 55,
              right: 56,
              child: Column(
                children: <Widget>[
                  Text('Food in Mail',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.85),
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                  Text('foodstyles@yellow.com',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.75),
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
                ],
              ))
        ]),
        SizedBox(height: 30),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    offset: Offset(10, 10),
                    blurRadius: 10),
                BoxShadow(
                    color: Colors.white.withOpacity(.95),
                    offset: Offset(-10, -10),
                    blurRadius: 10)
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [
                    Colors.grey[100].withOpacity(.8),
                    Colors.grey[200],
                    Colors.grey[400],
                    Colors.grey[600],
                  ],
                  begin: Alignment.topLeft,
                  stops: [0.1, 0.3, 0.6, 0.9])),
          child: Icon(
            Icons.mail,
            size: 70,
            color: Colors.black.withOpacity(.7),
          ),
        ),
        SizedBox(height: 30),
        Container(
            child: Icon(Icons.android, size: 60, color: Colors.grey[800]),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color:Colors.grey[300],//do not use this if you use linear gradient
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      offset: Offset(10, 10),
                      color: Colors.black.withOpacity(.09)),
                  BoxShadow(
                      blurRadius: 10,
                      offset: Offset(-10, -10),
                      color: Colors.white),
                ],
                gradient: LinearGradient(
                    colors: [
                      Colors.grey[200],
                      Colors.grey[300],
                      Colors.grey[400],
                      Colors.grey[500],
                    ],
                    begin: Alignment.topLeft,
                    stops: [0.1, 0.3, 0.6, 0.9])))
      ]),
    );
  }

  Widget food(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8, 16.0, 8),
      child: Text(text,
          style: TextStyle(
              color: Colors.black.withOpacity(.7),
              fontSize: 18,
              fontWeight: FontWeight.w600)),
    );
  }

  Widget buildFoodContainer(String image, String texts) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 170,
        width: 150,
        decoration: new BoxDecoration(
            color: Colors.yellow[50],
            borderRadius: BorderRadius.circular(17.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.075),
                  offset: Offset(4, 4),
                  blurRadius: 6),
              BoxShadow(
                  color: Colors.white.withOpacity(0.75),
                  offset: Offset(-4, -4),
                  blurRadius: 6)
            ]),
        child: Column(children: [
          SizedBox(height: 13),
          Container(
            height: 110,
            child: Image.asset(image),
          ),
          SizedBox(height: 20),
          Text(
            texts,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          )
        ]),
      ),
    );
  }
}
