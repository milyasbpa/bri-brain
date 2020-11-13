import 'package:flutter/material.dart';

class DesktopSideBar extends StatelessWidget {
  final double width;
  const DesktopSideBar(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      width: width,
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text(
              "SideBar",
              style: TextStyle(
                fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MobileSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}