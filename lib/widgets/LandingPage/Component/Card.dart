//import 'dart:html';

import 'package:flutter/material.dart';
import 'CardComponent/SubCard.dart';

class DesktopCard extends StatelessWidget {
  final double width;
  const DesktopCard(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:32 ),
      child: Row(
        children :[
          SubCard("Total Nasabah","images/Icon-Total.png",707,Color.fromRGBO(130, 130, 130, 1)),
          SubCard("Ditindaklanjuti","images/Icon-FollowUp.png",700,Color.fromRGBO(73,209,152,1)),
          SubCard("Belum Tindak Lanjut","images/Icon-UnFollowUp.png",7,Color.fromRGBO(239,180,3,1)),
          ]
      )
    );
  }
}
