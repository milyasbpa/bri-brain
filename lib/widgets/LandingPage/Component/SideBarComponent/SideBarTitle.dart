import 'package:flutter/material.dart';

class SideBarTitle extends StatelessWidget {
  final String title;
  final textColor;
  const SideBarTitle(this.title, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              // letterSpacing: 1,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}