//import 'dart:html';

//import 'package:bribrain_project/widgets/LandingPage/Component/Card.dart';
import 'package:flutter/material.dart';

class DesktopChart extends StatelessWidget {
  final double width;
  const DesktopChart(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              'Chart',
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
