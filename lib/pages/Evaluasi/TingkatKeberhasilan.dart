import 'package:bribrain_project/components/layouts/PageBase.dart';
import 'package:flutter/material.dart';

class TingkatKeberhasilan extends StatelessWidget {
  // const MikroChurnAnalytics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBase(
        judul: 'Evaluasi',
        subJudul: 'Tingkat Keberhasilan',
        deskripsi:
            'Evaluasi terhadap keberhasilan model yang sudah dibuat dan dibandingkan dengan kondisi di lapangan yang sudah atau belum dilakukan oleh tenaga pemasar',
            loginCondition: true,);
  }
}
