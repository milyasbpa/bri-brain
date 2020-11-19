import 'package:bribrain_project/components/elements/CardProduk.dart';
import 'package:bribrain_project/styles/colorConst.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:flutter/material.dart';

class CardProdukFragment extends StatelessWidget {
  const CardProdukFragment({@required this.judul, @required this.deskripsi, @required this.menu, @required this.deskripsiMenu,@required this.icon});

 final judul,deskripsi,menu,deskripsiMenu,icon;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.fromLTRB(
                  SizeConfig.blockHorizontal * 10,SizeConfig.blockVertical * 5,
                  SizeConfig.blockHorizontal * 10,0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            menu,
            style: TextStyle(
                color: Color(Dark_Blue),
                fontSize: 38,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, SizeConfig.blockVertical * 2.5),
            child: Text(
                deskripsiMenu,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(Athens_Grey),
                    fontSize: 16)),
          ),
            Container(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for (int i=0;i<judul.length;i++)
                  CardProduk(judul:judul[i],deskripsi: deskripsi[i],icon:icon[i]),
              ],
            ))
        ],
      ),
    );
  }
}
