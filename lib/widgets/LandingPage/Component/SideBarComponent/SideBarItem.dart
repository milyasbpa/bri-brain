import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  final String item;
  final textColor;
  const SideBarItem(this.item, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      // color: Colors.yellow,
      child: Row(
        children: <Widget>[
          Text(
            item,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}