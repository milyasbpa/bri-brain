import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/styles/colorConst.dart';

// class Item {
//   final String submenu;
//   final String link;
//   Item(this.submenu, this.link);
// }

class BottomListMenu extends StatelessWidget {
  const BottomListMenu({@required this.list, @required this.sublist});
  final list, sublist;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, SizeConfig.blockVertical * 6, 0, 0),
      color: Color(BribrainColor),
      // width: SizeConfig.blockHorizontal*100,
      child: Row(children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockHorizontal * 10,
              vertical: SizeConfig.blockVertical * 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                list,
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  color: Color(White),
                  fontSize: SizeConfig.blockHorizontal * 1,
                  fontWeight: FontWeight.w700,
                  // fontFamily: 'NunitoSans-Regular'
                ),
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    for (int i = 0; i < sublist.length; i++)
                    // Expanded(child :
                    // Wrap(children: [
                      Text(sublist[i],
                          style: (TextStyle(
                              fontFamily: "NunitoSans",
                              color: Color(White),
                              fontSize: SizeConfig.blockHorizontal * 1,
                              fontWeight: FontWeight.w400)))
                  // ])
                  // )
                ],
                // _listItem.map((item) {
                //   return Text(item.submenu,
                //       style: (TextStyle(
                //           fontFamily: "NunitoSans",
                //           color: Color(White),
                //           fontSize: SizeConfig.blockHorizontal * 1,
                //           fontWeight: FontWeight.w400)));
                // }).toList(),
              ))
            ],
          ),
        ),
      ]),
    );
  }
}
