import 'package:flutter/material.dart';
// import 'Component/Table.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/components/fragments/SideBarMenu.dart';
import 'package:bribrain_project/components/elements/HeaderContent.dart';

class PageHeader extends StatelessWidget {
  const PageHeader(
      {@required this.judul,
      @required this.subjudul,
      @required this.deskripsi,
      this.content});
  final judul, subjudul, deskripsi, content;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SideBarMenu(),
          // Flexible(child: SideBarMenu()),
          Expanded(
              child: Container(
            child: Column(
              children: <Widget>[
                HeaderContent(
                  judul: judul,
                  subJudul: subjudul,
                  deskripsi: deskripsi,
                ),
                content != null
                    ? content
                    : Center(
                      child: Text(
                        'Content Not Found',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.blockHorizontal * 2,
                          color: Color.fromRGBO(26,50,74,1)))),
                // DesktopTable(width*0.6875),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

