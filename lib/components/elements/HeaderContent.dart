import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({@required this.judul, @required this.subJudul, @required this.deskripsi});
  final judul, subJudul, deskripsi;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, SizeConfig.blockVertical * 7, 0, 0),
      height: SizeConfig.blockVertical * 17,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: Text(
            '$judul',
            style: TextStyle(
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.blockHorizontal * 1.2,
              color: Color.fromRGBO(132,159,189,1)
            ),
          )),
          Flexible(child : Text(
            '$subJudul',
            style: TextStyle(
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.blockHorizontal * 2,
              color: Color.fromRGBO(26,50,74,1)
            ),
          )),
          Flexible(child : Text(
            '$deskripsi',
            style: TextStyle(
              fontFamily: "NunitoSans",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.blockHorizontal * 0.8,
              color: Color.fromRGBO(132,159,189,1)
            )
          )),
          Divider(),
        ],
      ),
    );
  }
}
