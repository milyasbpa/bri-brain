import 'package:bribrain_project/components/elements/ChartContent.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';

class ChartFragment extends StatelessWidget {
  final List<ChartDatas> data = [
    ChartDatas(
      kategori: 'Buruk',
      jumlahRekening: 16,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
      totalSaldo: 2777000,
    ),
    ChartDatas(
      kategori: 'Kurang Baik',
      jumlahRekening: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.orange),
      totalSaldo: 2200,
    ),
    ChartDatas(
      kategori: 'Baik',
      jumlahRekening: 14,
      barColor: charts.ColorUtil.fromDartColor(Colors.yellow),
      totalSaldo: 208000,
    ),
    ChartDatas(
      kategori: 'Sangat Baik',
      jumlahRekening: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.greenAccent),
      totalSaldo: 1300000,
    ),
    ChartDatas(
      kategori: 'Isitmewa',
      jumlahRekening: 50,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
      totalSaldo: 6530000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.blockHorizontal * 60,
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
      child: ChartContent(data: data)
    );
  }
}
