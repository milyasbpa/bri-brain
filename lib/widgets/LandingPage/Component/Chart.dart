//import 'dart:html';

//import 'package:bribrain_project/widgets/LandingPage/Component/Card.dart';
import 'package:bribrain_project/widgets/LandingPage/Component/ChartComponent/SubscriberChart.dart';
import 'package:bribrain_project/widgets/LandingPage/Component/ChartComponent/SubscriberSeries.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DesktopChart extends StatelessWidget {
  final double width;
  // final List<ChartSeries> data = [

  // ];

  DesktopChart(this.width);

  final List<SubscriberSeries> data = [
    SubscriberSeries(
      kategori: 'Buruk',
      jmlRekening: 16,
      barColor: charts.ColorUtil.fromDartColor(Colors.red)
    ),
    SubscriberSeries(
      kategori: 'Kurang Baik',
      jmlRekening: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.orange)
    ),
    SubscriberSeries(
      kategori: 'Baik',
      jmlRekening: 14,
      barColor: charts.ColorUtil.fromDartColor(Colors.yellow)
    ),
    SubscriberSeries(
      kategori: 'Sangat Baik',
      jmlRekening: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.greenAccent)
    ),
    SubscriberSeries(
      kategori: 'Isitmewa',
      jmlRekening: 50,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(49, 127, 255, 0.17),
            blurRadius: 8.0,
            offset: new Offset(0, 2)
          )
        ]
      ),
      // color: Colors.cyanAccent,
      child: SubscriberChart(data: data)
    );
  }
}
