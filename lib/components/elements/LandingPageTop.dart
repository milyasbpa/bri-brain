import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/components/fragments/LandingPageTitle.dart';
// import 'package:flutter_svg/avd.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/rendering.dart';
// import 'dart:math';

class LandingPageTop extends StatelessWidget {
  const LandingPageTop({this.landingPage = false});
  final landingPage;
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
              'images/vector-top-landingPage.png',
              width: SizeConfig.blockHorizontal * 100,
              fit: BoxFit.fitWidth,
            ),
          ),
          LandingPageTitle(
            judul: landingPage
                ? 'Tingkatkan Produktivitas tenaga pemasaran dengan BRIBRAIN'
                : 'Jelajahi Berbagai Layanan BRIBRAIN',
            description: landingPage
                ? 'BRIBRAIN berkomitmen untuk memberikan rekomendasi yang presisi dan konsisten untuk keputusan bisnis anda.'
                : 'Temukan berbagai manfaat yang dapat mempermudah tenaga pemasar di lapangan dalam melakukan akuisisi dan retensi nasabah',
            landingPage: landingPage,
          ),
          Positioned(
            top: 200,
            right: 40,
            child: Image.asset(
              landingPage
                  ? 'images/woman-top-landingPage.png'
                  : 'images/woman-top-produkLayanan.png',
            ),
          ),
          !landingPage
              ? Positioned(
                  top: SizeConfig.blockVertical * 77,
                  right: SizeConfig.blockHorizontal * 33,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockVertical * 2),
                    width: SizeConfig.blockHorizontal * 25,
                    child: Row(
                      children: [
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Color(0xFFF4F4F4),
                              filled: true,
                              hoverColor: Color(0xFFF4F4F4),
                              labelStyle: TextStyle(color: Color(0xFF8F9AB0)),
                              labelText:
                                  'Cari produk atau layanan Bribrain yang diinginkan'),
                        ),
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Search',
                              style: TextStyle(
                                fontSize: SizeConfig.blockHorizontal * 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
