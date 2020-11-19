import 'package:bribrain_project/components/elements/DummyCard.dart';
import 'package:bribrain_project/components/fragments/LandingPageMiddle.dart';
import 'package:bribrain_project/components/elements/LandingPageTop.dart';
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
            width: SizeConfig.blockHorizontal * 100,
            child: Column(
              children: [
                LandingPageTop(landingPage: true,),
                Container(
                    margin: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockVertical * 6),
                    child: Column(
                      children: [
                        Text(
                          '4 Skor Landasan BRIBRAIN',
                          style:
                              TextStyle(color: Color(MineShaft), fontSize: 38),
                        ),
                        DummyCard(),
                      ],
                    )),
                LandingPageMiddle(),
                ManfaatLandingPage(),
                BottomListFragment(),
              ],
            )));
  }
}
