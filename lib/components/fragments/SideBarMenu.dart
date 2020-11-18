import 'package:bribrain_project/components/elements/SideBarContent.dart';
import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';

class SideBarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.blockHorizontal * 25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(SizeConfig.blockHorizontal * 7.5,SizeConfig.blockVertical * 5.5,0,0),
            child: Column(
              children: <Widget>[
                SideBarContent(menu: 'General', submenu: ['BRI Score', 'Geolocation'],),
                SideBarContent(menu: 'Mikro', submenu: ['Churn Analytics', 'Rekomendasi Produk', 'Kupedes DH']),
                SideBarContent(menu: 'Konsumer', submenu: ['CLIP', 'Collection Sharing', 'Briguna Pre Approval']),
                SideBarContent(menu: 'Evaluasi', submenu: ['Tingkat Keberhasilan', 'Click Rate']),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}