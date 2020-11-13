//import 'dart:html';

import 'package:flutter/material.dart';

class DesktopDescription extends StatelessWidget {
  final double width;
  const DesktopDescription(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              'Description',
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
