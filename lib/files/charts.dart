import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartApp extends StatefulWidget {
  @override
  _ChartAppState createState() => _ChartAppState();
}

class _ChartAppState extends State<ChartApp> {
  List<charts.Series<Rainfall, String>> getchartdata() {
    var data = [
      Rainfall("Kathmandu", 85),
      Rainfall("Tokyo", 50),
      Rainfall("Jakarta", 30),
      Rainfall("London", 75),
      Rainfall("Paris", 15),
    ];
    return [
      charts.Series(
          data: data,
          domainFn: (Rainfall rainfall, _) => rainfall.address,
          measureFn: (Rainfall rainfall, _) => rainfall.amount,
          colorFn: (Rainfall rainfall, _) => charts.ColorUtil.fromDartColor(
              rainfall.applyColor(rainfall.amount)),
          id: 'Amount of Rainfall in January',
          labelAccessorFn: (Rainfall row, _) => '${row.address}:${row.amount}')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('Charts')),
      body: Center(
          child: charts.PieChart(
        getchartdata(),
        animate: true,
        defaultRenderer:
            new charts.ArcRendererConfig(arcWidth: 100, arcRendererDecorators: [
          new charts.ArcLabelDecorator(
            labelPosition: charts.ArcLabelPosition.inside,
          )
        ]),
      )),
    );
  }
}

class Rainfall {
  String address;
  int amount;
  Rainfall(this.address, this.amount);

  applyColor(int rain) {
    if (rain < 20) {
      return Color(0xFFFFAF99);
    } else if (20 <= rain && rain < 40) {
      return Color(0xFF2E7D99);
    } else if (rain >= 40 && rain < 60) {
      return Color(0xFFFFCCBC);
    } else if (rain >= 60 && rain < 80) {
      return Color(0xFF6A1B9A);
    } else {
      return Color(0xFFFF8722);
    }
  }
}
