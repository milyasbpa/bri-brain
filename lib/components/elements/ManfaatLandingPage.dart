import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/styles/colorConst.dart';

class ManfaatLandingPage extends StatelessWidget {
  const ManfaatLandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Container(
          margin: EdgeInsets.fromLTRB(0,0,0,SizeConfig.blockVertical*10),
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(0, 0, 0, SizeConfig.blockVertical * 10),
                child: Text(
                  'Manfaat BRIBRAIN',
                  style: TextStyle(color: Color(MineShaft), fontSize: 38, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin:EdgeInsets.symmetric(horizontal:SizeConfig.blockHorizontal*10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset('/images/manfaat-landingPage.png'),
                    ),
                    Container(
                      child: Column(
                        children: [
                          for (int i = 1; i < 6; i++)
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0, 0, 0, SizeConfig.blockVertical * 2),
                              child: Row(
                                children: [
                                  Container(
                                      width: 40,
                                      height: 40,
                                      margin: EdgeInsets.fromLTRB(0, 0,
                                          SizeConfig.blockHorizontal * 1.5, 0),
                                      decoration: BoxDecoration(
                                          color: Color(BribrainColor),
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Text(
                                          '$i',
                                          style: TextStyle(
                                              color: Color(White),
                                              fontSize: 16),
                                          // textAlign: TextAlign.center,
                                        ),
                                      )),
                                  Text(
                                      'Manfaat Penggunaan Bribrain seperti meningkatkan produktifitas mantri'),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
