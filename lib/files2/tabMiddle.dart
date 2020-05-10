import 'package:flutter/material.dart';

class TabBarMiddleApp extends StatefulWidget {
  @override
  _TabBarMiddleAppState createState() => _TabBarMiddleAppState();
}

class _TabBarMiddleAppState extends State<TabBarMiddleApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: new AppBar(
        title: Text('Tab Bar'),
        bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4,
            indicatorColor: Colors.white54,
            indicatorPadding: const EdgeInsets.all(2),
            tabs: [
              Center(
                child: Icon(
                  Icons.archive,
                  size: 120,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Icon(
                  Icons.archive,
                  size: 120,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Icon(
                  Icons.archive,
                  size: 120,
                  color: Colors.blue,
                ),
              ),
            ]),
      )),
    );
  }
}
