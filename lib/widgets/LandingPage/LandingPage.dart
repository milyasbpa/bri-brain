import 'package:flutter/material.dart';
import 'Component/Card.dart';
import 'Component/Chart.dart';
import 'Component/Description.dart';
import 'Component/SideBar.dart';
import 'Component/Table.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopLandingPage(
              constraints.biggest.width, constraints.biggest.height);
        } else {
          return MobileLandingPage();
        }
      },
    );
  }
}

class DesktopLandingPage extends StatelessWidget {
  final double width, height;
  const DesktopLandingPage(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DesktopSideBar(width*0.3125),
          Container(
            width: width*0.6875,
            child: Column(  
              children: <Widget>[
                DesktopDescription(width*0.6875),
                DesktopCard(width*0.6875),
                DesktopChart(width*0.6875),
                DesktopTable(width*0.6875),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
              "Mobile View",
              style: TextStyle(
                fontSize: 40
              ),
            ),
        ],
      ),
    );
  }
}
