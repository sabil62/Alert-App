import 'package:alertapp/files2/greenUIusingTable.dart';
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
            buildThreeImages(),
            SizedBox(height: 20),
            buildGradientContainer(),
            Container(
              height: 50,
              child: Image.network(
                  'https://p7.hiclipart.com/preview/871/719/600/triangle-geometry-colorful-diamond-background-vector.jpg'),
            )
          ],
        ));
  }
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
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
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
            ),
          ],
        )),
      ]),
    ),
  );
}

Widget buildThreeImages() {
  return Container(
    height: 130,
    child: GridView.count(crossAxisCount: 3, crossAxisSpacing: 15, children: [
      buildImagewithCaption(
          'https://friendlystock.com/wp-content/uploads/2020/04/9-nurse-holding-digital-thermometer-cartoon-clipart.jpg',
          'Check Temperature'),
      buildImagewithCaption(
          'https://thumbs.dreamstime.com/b/routine-actions-washing-hands-soap-water-cute-cartoon-illustration-hygiene-little-boy-dark-hair-bathroom-jpg-106217917.jpg',
          'Wash Hands'),
      buildImagewithCaption(
          'https://previews.123rf.com/images/goodstocker/goodstocker1810/goodstocker181000427/110605671-funny-cartoon-guy-wearing-medical-mask-for-respiratory-disease-protection-cartoon-design-icon-colorf.jpg',
          'Wear Mask')
    ]),
  );
}

Widget buildImagewithCaption(String image, String prevention) {
  return Container(
    // decoration: BoxDecoration(color: Colors.green[100]),
    child: Column(children: [
      Container(
        height: 70,
        width: 70,
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(120),
            boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 4)],
            image: new DecorationImage(
                image: NetworkImage(image), fit: BoxFit.fill)),
      ),
      SizedBox(height: 5),
      Center(
          child: Text(prevention,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)))
    ]),
  );
}

Widget buildGradientContainer() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      height: 120,
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, blurRadius: 4, offset: Offset(0, 4))
          ],
          gradient: new LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.blue[50],
                Colors.blue[200],
              ])),
      child: Row(children: [
        Image.asset(
          "assets/geography.png",
          height: 78,
          // width: 64,
        ),
        SizedBox(width: 20),
        Container(
            // height: 120,
            // decoration: new BoxDecoration(
            //     borderRadius: BorderRadius.circular(24),
            //     color: Colors.yellow[50]),
            child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text('Dial 5555 for help',
                  style: TextStyle(
                      color: Colors.yellow[50],
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 10),
              Text('If only symptoms appear',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ))
            ],
          ),
        ))
      ]),
    ),
  );
}
