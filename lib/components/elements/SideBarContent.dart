import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';

class SideBarContent extends StatelessWidget {
  const SideBarContent({@required this.menu, @required this.submenu, @required this.routes});
  final menu, submenu, routes;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.blockVertical * 1.5),
      child: Column(
        children: [
          SideBarTitle(menu, Color.fromRGBO(51, 51, 1, 0.8)),
          Row(
            children: [SubLists(submenu: submenu, routes:routes)],
          ),
        ],
      ),
    );
  }
}

class SubLists extends StatelessWidget {
  const SubLists({@required this.submenu, @required this.routes});
  final submenu,routes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < submenu.length; i++)
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, routes[i]);
            },
            child: Text(
              submenu[i],
              style: TextStyle(
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.blockHorizontal * 0.9,
                color: Color.fromRGBO(132, 159, 189, 1),
              ),
            ),
          )
      ],
    );
  }
}


class SideBarTitle extends StatelessWidget {
  final String title;
  final textColor;
  const SideBarTitle(this.title, this.textColor);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child:Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.blockHorizontal * 1.2,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
