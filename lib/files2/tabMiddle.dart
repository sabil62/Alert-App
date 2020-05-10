import 'package:flutter/material.dart';

class TabBarMiddleApp extends StatefulWidget {
  @override
  _TabBarMiddleAppState createState() => _TabBarMiddleAppState();
}

class _TabBarMiddleAppState extends State<TabBarMiddleApp> {
  Color appBarColor = Color(0xFFD81B60);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: new AppBar(
        backgroundColor: appBarColor,
        title: Text('Tab Bar'),
        bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4,
            indicatorColor: Colors.white54,
            unselectedLabelColor: Colors.grey[200],
            indicatorPadding: const EdgeInsets.all(2),
            onTap: (index) {
              switch (index) {
                case 0:
                  appBarColor = Color(0xFFFB8C00);
                  break;
                case 1:
                  appBarColor = Color(0xff73A1F9);
                  break;
                case 2:
                  appBarColor = Color(0xff0f9b0f);
                  break;
                default:
              }
            },
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
