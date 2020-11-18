import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';

class CardContent extends StatelessWidget {
  final String icon, title;
  final int value;
  final textColor;
  const CardContent(this.title, this.icon, this.value, this.textColor);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(right: SizeConfig.blockHorizontal * 1.2),
      width: SizeConfig.blockHorizontal * 10,
      height: SizeConfig.blockVertical * 10,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(SizeConfig.blockHorizontal * 0.6),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.12),
                blurRadius: 8.0,
                offset: new Offset(0, 2))
          ]),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.blockHorizontal * 0.8),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(right: SizeConfig.blockHorizontal * 0.4),
            child: Image.asset(
              "$icon",
              width: SizeConfig.blockHorizontal * 0.8,
              height: SizeConfig.blockHorizontal * 0.8,
            ),
          ),
          Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Flexible(
                    child: Text(
                  "$title",
                  style: TextStyle(
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: SizeConfig.blockHorizontal * 0.8,
                      color: Color.fromRGBO(130, 130, 130, 1)),
                )),
                Expanded(child : Text(
                  "$value",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: SizeConfig.blockHorizontal * 1.25,
                      color: textColor),
                )),
              ])),
        ]),
        //   ],
        // ),
      ),
    );
  }
}
