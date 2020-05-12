import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import './simplelinechart.dart' as lineChart;

class GreenApp extends StatefulWidget {
  @override
  _GreenAppState createState() => _GreenAppState();
}

class _GreenAppState extends State<GreenApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: Icon(Icons.alarm_off, color: Colors.green)),
        backgroundColor: Colors.grey[200],
        body: ListView(
          children: <Widget>[
            Container(
              child: GridView.count(
                shrinkWrap:
                    true, //this must be there because you are using gridview inside of listview and both are scrollable
                crossAxisCount: 2,

                children: <Widget>[
                  // Container(
                  //   height: 30,
                  //   decoration: BoxDecoration(color: Colors.greenAccent),
                  // ),
                  // Container(
                  //   height: 30,
                  //   decoration: BoxDecoration(color: Colors.greenAccent),
                  // ),
                  // Container(
                  //   height: 30,
                  //   decoration: BoxDecoration(color: Colors.greenAccent),
                  // ),
                  // Container(
                  //   height: 30,
                  //   decoration: BoxDecoration(color: Colors.greenAccent),
                  // ),
                  buildContainers('Confirmed Cases', 191),
                  buildContainers('Total Deaths', 0),
                  buildContainers('Total Recovered', 33),
                  buildContainers('New Cases', 57),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Preventions',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5)),
            ),
            buildThreeImages()
          ],
        ));
  }

  Widget buildContainers(String text, int number) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        //height: 90,//doesnt matter grid will itself make container
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 8, spreadRadius: 1)
            ]),
        child: Column(children: [
          SizedBox(height: 8),
          //1st row
          Container(
              height: 20,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      backgroundColor: Colors.red[900], child: Text('I')),
                  Text(
                    text,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ],
              )),
          SizedBox(height: 22),
          //2nd row
          Container(
              //height: 60, //this
              child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Container(
                  width: 60,
                  child: Column(children: [
                    Text(
                      number.toString(),
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 8),
                    Text('People',
                        style: TextStyle(color: Colors.grey, fontSize: 10))
                  ]),
                ),
              ),
              //sizedbox
              SizedBox(width: 10),
              //-----------------------this is supposed to be a oscilloscope
              Container(
                height: 60,
                width: 80,
                child: charts.LineChart(
                  lineChart.createSampleData(),
                  animate: true,
                  animationDuration: Duration(milliseconds: 2200),
                ),
              )
            ],
          )),
        ]),
      ),
    );
  }

  Widget buildThreeImages() {
    return Container(
      height: 100,
      child: GridView.count(crossAxisCount: 3, crossAxisSpacing: 15, children: [
        buildImagewithCaption(),
        buildImagewithCaption(),
        buildImagewithCaption()
      ]),
    );
  }

  Widget buildImagewithCaption() {
    return Container(
      decoration: BoxDecoration(color: Colors.green[100]),
      child: Column(children: [
        Container(
          height: 60,
          child: CircleAvatar(
            //Better use Decoration Boz and border radius
            backgroundColor: Colors.red[900],
          ),
        ),
        SizedBox(height: 5),
        Center(
            child: Text('write text',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)))
      ]),
    );
  }
}
