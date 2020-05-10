import 'package:alertapp/files2/tabs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabBarComplexApp extends StatefulWidget {
  @override
  _TabBarComplexAppState createState() => _TabBarComplexAppState();
}

class _TabBarComplexAppState extends State<TabBarComplexApp> {
  Color primaryColor = Colors.red[300];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Complex Tab'),
          backgroundColor: primaryColor,
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4,
            indicatorColor: Colors.grey[300],
            onTap: (index) {
              setState(() {
                switch (index) {
                  case 0:
                    primaryColor = Color(0xFFFB8C00);
                    break;
                  case 1:
                    primaryColor = Color(0xff73A1F9);
                    break;
                  case 2:
                    primaryColor = Color(0xff0f9b0f);
                    break;

                  default:
                }
              });
            },
            tabs: <Widget>[
              Icon(
                FontAwesomeIcons.android,
                color: Colors.white,
                size: 40,
              ),
              Icon(FontAwesomeIcons.appStoreIos, color: Colors.white, size: 40),
              Icon(FontAwesomeIcons.apple, color: Colors.white, size: 40)
            ],
          ),
        ),
        body: TabBarView(children: [
          FirstTab(0xFFFB8C00),
          FirstTab(0xff73A1F9),
          FirstTab(0xff0f9b0f)
        ]),
      ),
    );
  }
}
