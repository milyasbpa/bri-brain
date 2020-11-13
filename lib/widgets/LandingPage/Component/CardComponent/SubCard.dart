import 'package:flutter/material.dart';

class SubCard extends StatelessWidget {
  final String icon,title;
  final int value;
  final textColor;
  SubCard(this.title,this.icon, this.value, this.textColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:24),
      child: Column(
        children: [
          Container(
            width: 180,
            height: 97,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.12))
                ]
                //borderRadius: BorderRadius.circular(16)
                ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16, top: 12),
                      child: Image.asset(
                        "$icon",
                        width: 16,
                        height: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, top: 12),
                      child: Text(
                        "$title",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color.fromRGBO(130, 130, 130, 1)),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 42,
                  height: 32,
                  margin: EdgeInsets.only(
                      top: 17, left: 40, right: 98, bottom: 16),
                  child: Text(
                    "$value",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: textColor
                        ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
