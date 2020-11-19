import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/styles/colorConst.dart';

class CardProduk extends StatelessWidget {
  const CardProduk({@required this.judul, @required this.deskripsi});
  final judul, deskripsi;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: 250,
      height: 250,
      padding: EdgeInsets.all(SizeConfig.blockHorizontal * 0.9),
      margin:EdgeInsets.fromLTRB(0, 0, SizeConfig.blockHorizontal *2, 0),
      decoration: BoxDecoration(
          color: Color(White),
          borderRadius: BorderRadius.circular(SizeConfig.blockHorizontal * 0.6),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.12),
                blurRadius: 8.0,
                offset: new Offset(0, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Icon(Icons.description),
                Expanded(
                    child: Wrap(children: [
                  Text(judul,
                      style: TextStyle(
                          color: Color(Dark_Blue),
                          fontSize: SizeConfig.blockHorizontal * 1.2,
                          fontWeight: FontWeight.w600)),
                ]))
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: Wrap(children: [Text(deskripsi)]),
          ),
          FlatButton(
              minWidth: 163,
              height: 50,
              onPressed: () {
                Navigator.pushNamed(context, '/mikro/churn-analytics');
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Color(Athens_Grey))),
              child: Text(
                'Selengkapnya',
                style: TextStyle(color: Color(Athens_Grey)),
              )),
        ],
      ),
    );
  }
}
