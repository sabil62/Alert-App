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
      length: 6,
      child: Scaffold(
        appBar: new AppBar(
          backgroundColor: appBarColor,
          title: Text('Tab Bar'),
          bottom: TabBar(
              isScrollable: true,
              indicatorWeight: 4,
              indicatorColor: Colors.white54,
              unselectedLabelColor: Colors.grey[200],
              indicatorPadding: const EdgeInsets.all(12),
              onTap: (index) {
                setState(() {
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
                    case 3:
                      appBarColor = Color(0xFFFB8C99);
                      break;
                    case 4:
                      appBarColor = Color(0xff0f9b7f);
                      break;
                    default:
                      appBarColor = Color(0xff000b7f);
                      break;
                  }
                });
              },
              tabs: [
                Icon(
                  Icons.archive,
                  size: 40,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.art_track,
                  size: 40,
                  color: Colors.red,
                ),
                Icon(
                  Icons.format_align_justify,
                  size: 40,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.audiotrack,
                  size: 40,
                  color: Colors.deepPurple,
                ),
                Icon(
                  Icons.headset,
                  size: 40,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.dashboard,
                  size: 40,
                  color: Colors.grey[400],
                ),
              ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Icon(
              Icons.archive,
              size: 120,
              color: appBarColor,
            ),
          ),
          Center(
            child: Icon(
              Icons.archive,
              size: 120,
              color: appBarColor,
            ),
          ),
          Center(
            child: Icon(
              Icons.archive,
              size: 120,
              color: appBarColor,
            ),
          ),
          Text('lazy'),
          Text('super'),
          Text('yup super')
        ]),
      ),
    );
  }
}
