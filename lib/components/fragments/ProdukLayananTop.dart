import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/components/fragments/LandingPageTitle.dart';
// import 'package:flutter_svg/avd.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/rendering.dart';
// import 'dart:math';

class ProdukLayananTop extends StatelessWidget {
  const ProdukLayananTop({Key key}) : super(key: key);

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
              'images/vector-top-produkLayanan.png',
              width: SizeConfig.blockHorizontal * 100,
              fit: BoxFit.fitWidth,
            ),
          ),
          LandingPageTitle(
            judul: 'Jelajahi Berbagai Layanan BRIBRAIN',
            description:
                'Temukan berbagai manfaat yang dapat mempermudah tenaga pemasar di lapangan dalam melakukan akuisisi dan retensi nasabah.',
          ),
        ],
      ),
    );
  }
}
