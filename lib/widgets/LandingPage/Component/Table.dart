//import 'dart:html';

import 'package:flutter/material.dart';

class DesktopTable extends StatelessWidget {
  final double width;
  const DesktopTable(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              'Table',
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
          )
        ],
      ),
    );
  }
}
