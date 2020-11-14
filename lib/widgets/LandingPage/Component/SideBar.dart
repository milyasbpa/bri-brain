import 'package:bribrain_project/widgets/LandingPage/Component/SideBarComponent/SideBarItem.dart';
import 'package:bribrain_project/widgets/LandingPage/Component/SideBarComponent/SideBarTitle.dart';
import 'package:flutter/material.dart';

class DesktopSideBar extends StatelessWidget {
  final double width;
  const DesktopSideBar(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.zero,
      width: width,
      // color: Colors.yellow,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(85,55,0,0),
            child: Column(
              children: <Widget>[
                SideBarTitle('General',Color.fromRGBO(51, 51, 1, 0.8)),
                SideBarItem('BRI Score', Color.fromRGBO(132, 159, 189, 1)),
                SideBarItem('Geolocation', Color.fromRGBO(132, 159, 189, 1)),

                SideBarTitle('Mikro',Color.fromRGBO(51, 51, 1, 0.8)),
                SideBarItem('Churn Analytics', Color.fromRGBO(132, 159, 189, 1)),
                SideBarItem('Rekomendasi Produk', Color.fromRGBO(132, 159, 189, 1)),
                SideBarItem('Kupedes DH', Color.fromRGBO(132, 159, 189, 1)),

                SideBarTitle('Konsumer',Color.fromRGBO(51, 51, 1, 0.8)),
                SideBarItem('CLIP', Color.fromRGBO(132, 159, 189, 1)),
                SideBarItem('Collection Scoring', Color.fromRGBO(132, 159, 189, 1)),
                SideBarItem('Briguna Pre Approval', Color.fromRGBO(132, 159, 189, 1)),

                SideBarTitle('Evaluasi',Color.fromRGBO(51, 51, 1, 0.8)),
                SideBarItem('Tingkat Keberhasilan', Color.fromRGBO(132, 159, 189, 1)),
                SideBarItem('Click Rate', Color.fromRGBO(132, 159, 189, 1)),
              ],
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