import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return DesktopNavBar();
      } else {
        return MobileNavBar();
      }
    }
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      color: Color.fromRGBO(0, 84, 155, 1),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(100, 23, 0, 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 41,
              width: 120,
              child: Image.asset(
                "images/Logo.png",
                width: 80,
              ),
            ),
            Text('Hayolu'),
            Text('Hayolu')
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
