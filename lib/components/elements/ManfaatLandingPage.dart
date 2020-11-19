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
                margin: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockVertical * 6),
                child: Column(
                  children: [
                    Text(
                      'Manfaat BRIBRAIN',
                      style: TextStyle(color: Color(MineShaft), fontSize: 38),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Flexible(flex: 1, child: Container()),
                          Flexible(
                              flex: 1,
                              child: Container(
                                  child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('1'),
                                      Text(
                                          'Manfaat Penggunaan Bribrain seperti meningkatkan produktifitas mantri'),
                                    ],
                                  )
                                ],
                              )))
                        ],
                      ),
                    ),
                  ],
                )),
    );
  }
}