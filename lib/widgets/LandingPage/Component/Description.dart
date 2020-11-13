//import 'dart:html';

import 'package:flutter/material.dart';

class DesktopDescription extends StatelessWidget {
  final double width;
  const DesktopDescription(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 70, 0, 40),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'Mikro',
            style: TextStyle(
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color.fromRGBO(132,159,189,1)
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Churn Analytics',
            style: TextStyle(
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 36,
              color: Color.fromRGBO(26,50,74,1)
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Prediksi nasabah yang akan keluar dari produk BRI atau dormant',
            style: TextStyle(
              fontFamily: "NunitoSans",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(132,159,189,1)
            )
          ),
          SizedBox(
            height: 24,
          ),
          Image.asset(
            "images/Line.png",
            width: 890,
          )

        ],
      ),
    );
  }
}
