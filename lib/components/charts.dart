import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';


class SimpleBarChart extends StatelessWidget {
  final List<Series<dynamic, String>> seriesList;
  final bool animate;

  const SimpleBarChart(this.seriesList, {required this.animate, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      _createSampleData(),
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];

    return [
      Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => MaterialPalette.yellow.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
