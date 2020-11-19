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
  // const BottomListFragment({Key key}) : super(key: key);
  // final List _listItem = [
  //   Item('Produk dan Layanan', '/produk-layanan'),
  //   Item('Frequently Asked Questions (FAQ)', '/faq'),
  // ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, SizeConfig.blockVertical * 6, 0, 0),
      color: Color(BribrainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomListMenu(list: 'Products', sublist: [
                'Produk dan Layanan',
                'Frequently Asked Question (FAQ)'
              ]),
         BottomListMenu(
                  list: 'Corp Website', sublist: ['BRI Websites']),
          BottomListMenu(list: 'Address', sublist: [
                'Jl. Jend. Sudirman No. Kav 44-46 RT. 14/ RW. 1 Bend. Hilir, Tanah Abang Jakarta Pusat, DKI Jakarta 10210'
              ]),
        ],
      ),
    );
  }
}
