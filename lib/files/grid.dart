import 'package:flutter/material.dart';

class GridViewApp extends StatefulWidget {
  @override
  _GridViewAppState createState() => _GridViewAppState();
}

class _GridViewAppState extends State<GridViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text('GridView')),
        body: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              children: List.generate(
                  100,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Center(child: Text(index.toString())),
                          decoration: BoxDecoration(
                              color: Colors.purple[giveColor(index)]),
                        ),
                      )));
        }));
  }

  int giveColor(int index) {
    var col;
    if (index > 10) {
      col = index / 10;
      print(col);
    } else {
      col = index;
    }

    return col.floor() * 100;
  }
}
