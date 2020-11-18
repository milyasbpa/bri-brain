import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ChartContent extends StatelessWidget {
  final List<ChartDatas> data;

  ChartContent({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartDatas, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (ChartDatas datas, _) => datas.kategori,
        measureFn: (ChartDatas datas, _) => datas.jumlahRekening,
        colorFn: (ChartDatas datas, _) => datas.barColor,
        labelAccessorFn: (ChartDatas datas, _) =>
            '${datas.jumlahRekening.toString()} | Rp${datas.totalSaldo.toString()}',
      )
    ];

    return Container(
        height: 400,
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
            Expanded(
              child: charts.BarChart(
                series,
                animate: true,
                vertical: false,
                barRendererDecorator: new charts.BarLabelDecorator<String>(),
                primaryMeasureAxis: new charts.NumericAxisSpec(
                    renderSpec: new charts.NoneRenderSpec()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
              child: Text("Jumlah Rekening | Total Saldo",
                  style: TextStyle(
                    fontFamily: "Rubik",
                    color: Color.fromRGBO(23, 26, 28, 1.0),
                    fontSize: 14,
                  )),
            ),
          ]),
        );
  }
}

class ChartDatas{
  final String kategori;
  final int jumlahRekening;
  final charts.Color barColor;
  final int totalSaldo;

  ChartDatas({
    @required this.kategori,
    @required this.jumlahRekening,
    @required this.barColor,
    @required this.totalSaldo,
  });
}