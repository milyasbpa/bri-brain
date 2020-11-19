import 'package:bribrain_project/components/elements/BottomListMenu.dart';
import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/styles/colorConst.dart';

class Item {
  final String submenu;
  final String link;
  Item(this.submenu, this.link);
}

class BottomListFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'images/vector-bottom-landingPage.png',
              width: SizeConfig.blockHorizontal * 100,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, SizeConfig.blockVertical * 6, 0, 0),
            // color: Color(BribrainColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomListMenu(list: 'Products', sublist: [
                  'Produk dan Layanan',
                  'Frequently Asked Question (FAQ)'
                ]),
                BottomListMenu(list: 'Corp Website', sublist: ['BRI Websites']),
                BottomListMenu(list: 'Address', sublist: [
                  'Jl. Jend. Sudirman No. Kav 44-46 RT. 14/ RW. 1 Bend. Hilir, Tanah Abang Jakarta Pusat, DKI Jakarta 10210'
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
