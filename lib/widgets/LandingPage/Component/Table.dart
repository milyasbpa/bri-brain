//import 'dart:html';

import 'package:flutter/material.dart';
import 'TableComponent/ShowDataTable.dart';

class DesktopTable extends StatelessWidget {
  final double width;
  const DesktopTable(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 100,bottom: 104),
      decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.12),
                    blurRadius: 8.0,
                    offset: new Offset(0, 2)
                  )
                ]
                //borderRadius: BorderRadius.circular(16)
                ),
      child:
        ShowDataTable()
    );
  }
}
