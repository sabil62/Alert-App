import 'package:alertapp/files/charts.dart';
import 'package:alertapp/files/gradient.dart';
import 'package:flutter/material.dart';
import '../files/tableAndClipPath.dart';

class TabSimpleApp extends StatefulWidget {
  @override
  _TabSimpleAppState createState() => _TabSimpleAppState();
}

class _TabSimpleAppState extends State<TabSimpleApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: new AppBar(
            title: new Text('Tabs'),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.android)),
              Tab(icon: Icon(Icons.announcement)),
              Tab(icon: Icon(Icons.apps)),
              Tab(icon: Icon(Icons.library_music)),
              Tab(icon: Icon(Icons.directions_railway)),
            ])),
        body: TabBarView(children: [
          new GradientApp(),
          TableAndClipPathApp(),
          ChartApp(),
          Center(
              child: Container(
            height: 250,
            child:
                Text('This is the fourth one', style: TextStyle(fontSize: 35)),
          )),
          Center(
            child: Icon(
              Icons.directions_boat,
              size: 80,
              color: Colors.black54,
            ),
          )
        ]),
      ),
    );
  }
}
