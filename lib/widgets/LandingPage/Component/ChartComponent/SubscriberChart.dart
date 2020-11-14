import 'package:bribrain_project/widgets/LandingPage/Component/ChartComponent/SubscriberSeries.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SubscriberChart extends StatelessWidget {
  final List<SubscriberSeries> data;

  SubscriberChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (SubscriberSeries series, _) => series.kategori,
        measureFn: (SubscriberSeries series, _) => series.jmlRekening,
        colorFn: (SubscriberSeries series, _) => series.barColor
      )
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: charts.BarChart(
                series, 
                animate: true,
                vertical: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal:0),
              child: Text(
                "Jumlah Rekening | Total Saldo",
                style: TextStyle(
                  fontFamily: "Rubik",
                  color: Color.fromRGBO(23, 26, 28, 1.0),
                  fontSize: 14,
                )
              ),
            ),
          ]
        ),
      )
    );
  }
}