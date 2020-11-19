import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/components/fragments/LandingPageTitle.dart';
// import 'package:flutter_svg/avd.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/rendering.dart';
import 'package:bribrain_project/styles/colorConst.dart';

class LandingPageMiddle extends StatelessWidget {
  // const LandingPageMiddle({Key key}) : super(key: key);

  final menu = ['BRI Score','Geolocation','Akuisisi Mikro','Retensi Mikro','Lainnya'];
  final linkMenu = ['/images/briscore-icon.png','/images/geolocation-icon.png','/images/akuisisimikro-icon.png','/images/retensimikro-icon.png','/images/lainnya-icon.png'];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.blockVertical * 100,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'images/vector-middle-landingPage.png',
              width: SizeConfig.blockHorizontal * 100,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LandingPageTitle(
                  judul: 'Jelajahi Berbagai Layanan BRIBRAIN',
                  description:
                      'Temukan berbagai manfaat dalam melakukan akuisisi dan retensi terhadap nasabah yang lebih tepat sasaran',
                ),
                Container(
                  width: 524,
                  height: 328,
                  decoration: BoxDecoration(
                      color: Color(White),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.09),
                            blurRadius: 8.0,
                            offset: new Offset(0, 2))
                      ]),
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockHorizontal * 3,
                      vertical: SizeConfig.blockVertical * 5),
                      child : Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 10.0,
                        runSpacing: 70.0,
                      children: [
                        for (int i = 0; i < menu.length; i++)
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockHorizontal*3, 0),
                            child: Column(
                              children: [
                                Image.asset(linkMenu[i], width: SizeConfig.blockHorizontal*3,height: SizeConfig.blockHorizontal*3,),
                                Text(
                                  menu[i],
                                  style: TextStyle(
                                    color: Color(Dark_Blue),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          )
                      ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
