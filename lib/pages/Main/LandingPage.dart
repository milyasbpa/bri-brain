import 'package:bribrain_project/components/elements/BottomListMenu.dart';
import 'package:bribrain_project/components/elements/DummyCard.dart';
import 'package:bribrain_project/components/elements/LandingPageTitle.dart';
import 'package:bribrain_project/components/elements/ManfaatLandingPage.dart';
import 'package:bribrain_project/components/fragments/BottomListFragment.dart';
import 'package:bribrain_project/components/layouts/PageBase.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/styles/colorConst.dart';

class LandingPage extends StatelessWidget {
  // const MikroChurnAnalytics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return PageBase(
        judul: '',
        subJudul: '',
        deskripsi: '',
        loginCondition: false,
        contentBeforeLogin: Container(
          width: SizeConfig.blockHorizontal*100,
            child: Column(
          children: [
            LandingPageTitle(
              judul:
                  'Tingkatkan Produktivitas tenaga pemasaran dengan BRIBRAIN',
              description:
                  'BRIBRAIN berkomitmen untuk memberikan rekomendasi yang presisi dan konsisten untuk keputusan bisnis anda.',
            ),
            Container(
                margin: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockVertical * 6),
                child: Column(
                  children: [
                    Text(
                      '4 Skor Landasan BRIBRAIN',
                      style: TextStyle(color: Color(MineShaft), fontSize: 38),
                    ),
                    DummyCard(),
                  ],
                )),
            LandingPageTitle(
              judul: 'Jelajahi Berbagai Layanan BRIBRAIN',
              description:
                  'Temukan berbagai manfaat dalam melakukan akuisisi dan retensi terhadap nasabah yang lebih tepat sasaran',
            ),
            ManfaatLandingPage(),
            BottomListFragment(),
            
          ],
        )));
  }
}
