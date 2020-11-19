import 'package:flutter/material.dart';
import 'package:bribrain_project/components/elements/SideBarContent.dart';
import 'package:bribrain_project/layout/layout.dart';

class SideBarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.blockHorizontal * 25,
      margin: EdgeInsets.fromLTRB(0, SizeConfig.blockVertical*5, 0, 0),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SideBarContent(
                  menu: 'General',
                  submenu: ['BRI Score', 'Geolocation'],
                  routes: ['/n', '/n']),
              SideBarContent(menu: 'Mikro', submenu: [
                'Akuisisi',
                'Retensi'
              ], routes: [
                '/mikro/churn-analytics',
                '/mikro/rekomendasi-produk'
              ]),
              SideBarContent(menu: 'Konsumer', submenu: [
                'Akuisisi',
                'Retensi'
              ], routes: [
                '/n',
                '/n',
              ]),
              SideBarContent(menu: 'Evaluasi', submenu: [
                'Tingkat Keberhasilan',
                'Click Rate',
                'Hasil Tindak Lanjut'
              ], routes: [
                'evaluasi/tingkat-keberhasilan',
                '/n',
                '/evaluasi/hasil-tindak-lanjut'
              ]),
            ],
          ),
        ],
      ),
    );
  }
}

// class MobileSideBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
