import 'package:flutter/material.dart';
import './greenUI.dart' as greenUIpage;

class GreenUIfromTable extends StatefulWidget {
  @override
  _GreenUIfromTableState createState() => _GreenUIfromTableState();
}

class _GreenUIfromTableState extends State<GreenUIfromTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GreenUi with Table')),
      body: ListView(children: [
        Table(
          children: [
            TableRow(children: [
              greenUIpage.buildContainers('Confirmed Cases', 191),
              greenUIpage.buildContainers('Total Deaths', 0),
            ]),
            TableRow(children: [
              greenUIpage.buildContainers('Total Recovered', 33),
              greenUIpage.buildContainers('New Cases', 57),
            ])
          ],
        ),
        SizedBox(height: 20),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 130,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4,
                        offset: Offset(0, 4))
                  ],
                  gradient: new LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Colors.blue[50],
                        Colors.blue[200],
                      ])),
            ),
          ),
          Positioned(
            left: 15,
            top: 22,
            child: Image.asset(
              "assets/geography.png",
              height: 88,
              // width: 64,
            ),
          ),
          Positioned(
            right: 22,
            top: 18,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text('Geography',
                    style: TextStyle(
                        color: Colors.yellow[50],
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5)),
                SizedBox(height: 10),
                Text('Can happen anywhere',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ))
              ],
            ),
          )
        ])
      ]),
    );
  }
}
