import 'package:bribrain_project/components/layouts/PageBase.dart';
import 'package:flutter/material.dart';

class HasilTindakLanjut extends StatelessWidget {
  // const MikroChurnAnalytics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBase(
        judul: 'Evaluasi',
        subJudul: 'TindakLanjut',
        deskripsi:
            'Laporan hasil tindak lanjut tenaga pemasar terhadap nasabah kelolaannya',
            loginCondition: true,);
  }
}
