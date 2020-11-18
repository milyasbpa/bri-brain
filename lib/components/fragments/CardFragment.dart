import 'package:flutter/material.dart';
import 'package:bribrain_project/components/elements/CardContent.dart';

class CardFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children :[
          CardContent("Total Nasabah","images/Icon-Total.png",707,Color.fromRGBO(130, 130, 130, 1)),
          CardContent("Ditindaklanjuti","images/Icon-FollowUp.png",700,Color.fromRGBO(73,209,152,1)),
          CardContent("Belum Tindak Lanjut","images/Icon-UnFollowUp.png",7,Color.fromRGBO(239,180,3,1)),
          ]
      )
    );
  }
}
