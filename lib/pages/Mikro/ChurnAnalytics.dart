import 'package:bribrain_project/components/fragments/CardFragment.dart';
import 'package:bribrain_project/components/fragments/ChartFragment.dart';
import 'package:bribrain_project/components/layouts/PageBase.dart';
import 'package:flutter/material.dart';

class ChurnAnalytics extends StatelessWidget {
  // const MikroChurnAnalytics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBase(
      judul: 'Mikro',
      subJudul: 'Churn Analytics',
      deskripsi:
          'Prediksi nasabah yang akan keluar dari produk BRI atau dormant',
      content: Container(
        child: Column(
          children: [
            CardFragment(),
            ChartFragment(),
          ],
        ),
      ),
    );
  }
}
