//import 'dart:html';

import 'package:flutter/material.dart';

class DesktopCard extends StatelessWidget {
  final double width;
  const DesktopCard(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              'Card',
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
