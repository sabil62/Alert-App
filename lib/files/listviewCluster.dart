import 'package:flutter/material.dart';

class ListViewsLayered extends StatefulWidget {
  @override
  _ListViewsLayeredState createState() => _ListViewsLayeredState();
}

class _ListViewsLayeredState extends State<ListViewsLayered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Listview'),
        ),
        body: ListView(children: <Widget>[
          buildContainer(),
          buildContainer(),
          //Horizontal list
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                buildContainer(),
                buildContainer(),
                buildContainer(),
                buildContainer(),
              ],
            ),
          ),
          buildContainer(),
          //H O R I Z O N T A L  LIST
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                buildContainer(),
                buildContainer(),
                buildContainer(),
              ],
            ),
          ),
          buildContainer(),
          buildContainer(),
          howMuchRating(4),
        ]));
  }

  Widget buildContainer() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        child: Container(
          height: 200,
          width: 200,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color(0xFF66BB6A),
              boxShadow: [
                new BoxShadow(
                    color: Colors.black87, blurRadius: 2, spreadRadius: 1)
              ]),
        ),
      ),
    );
  }

  Widget howMuchRating(double stars) {
    return Row(
        children: List.generate(stars.floor(), (index) {
      return Icon(
        Icons.star,
        color: Colors.amber[400],
        size: 40,
      );
    }));
  }
}

class ListViewNested extends StatefulWidget {
  @override
  _ListViewNestedState createState() => _ListViewNestedState();
}

class _ListViewNestedState extends State<ListViewNested> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text('horixontal one')),
      body: Center(
        child: Container(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              buildContainer(),
              buildContainer(),
              //horizontal
              Container(
                width: 250,
                child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: <Widget>[
                      buildContainer(),
                      buildContainer(),
                      buildContainer(),
                      buildContainer(),
                    ]),
              ),
              buildContainer(),
              buildContainer(),
              Container(
                width: 250,
                child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: <Widget>[
                      buildContainer(),
                      buildContainer(),
                      buildContainer(),
                      buildContainer(),
                    ]),
              ),
              buildContainer(),
              buildContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        child: Container(
          height: 100,
          width: 130,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.deepOrangeAccent,
              boxShadow: [
                new BoxShadow(
                    color: Colors.black87, blurRadius: 2, spreadRadius: 1)
              ]),
        ),
      ),
    );
  }
}

//  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
//             buildContainer(),
//             SizedBox(width: 11),
//             buildContainer(),
//             SizedBox(width: 11),
//             buildContainer(),
//             SizedBox(width: 11),
//             buildContainer(),
//             SizedBox(width: 11),
//             buildContainer(),
//             SizedBox(width: 11),
//             buildContainer(),
//             SizedBox(width: 11),
//             buildContainer(),
//             SizedBox(width: 11),
//           ]),
