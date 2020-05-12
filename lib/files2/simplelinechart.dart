/// Example of a simple line chart.
import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';

// class SimpleLineChart extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;

//   SimpleLineChart(this.seriesList, {this.animate});

//   /// Creates a [LineChart] with sample data and no transition.
//   factory SimpleLineChart.withSampleData() {
//     return new SimpleLineChart(
//       createSampleData(),
//       animate: false,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new charts.LineChart(seriesList, animate: animate);
//   }

//   /// Create one series with sample hard coded data.

// }

List<charts.Series<DiseaseChart, int>> createSampleData() {
  final data = [
    new DiseaseChart(0, 5),
    new DiseaseChart(1, 25),
    new DiseaseChart(2, 100),
    new DiseaseChart(3, 75),
  ];

  return [
    new charts.Series<DiseaseChart, int>(
      id: 'Infection',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (DiseaseChart sales, _) => sales.day,
      measureFn: (DiseaseChart sales, _) => sales.infection,
      data: data,
    )
  ];
}

/// Sample linear data type.
class DiseaseChart {
  final int day;
  final int infection;

  DiseaseChart(this.day, this.infection);
}
