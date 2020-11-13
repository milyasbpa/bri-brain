import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return DesktopNavBar("Bobby Sujatmiko","https://www.fairtravel4u.org/wp-content/uploads/2018/06/sample-profile-pic.png");
      } else {
        return MobileNavBar();
      }
    });
  }
}

class DesktopNavBar extends StatelessWidget {
  final String fullName,picture;
  const DesktopNavBar(this.fullName,this.picture);
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
            Row(
              children: [
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              NetworkImage('$picture'))),
                ),
                SizedBox(
                  width: 22,
                ),
                Container(
                  width: 139,
                  height: 20,
                  child: Text(
                    "$fullName",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      color: Colors.white
                    ),
                    ),
                ),
                SizedBox(width: 22),
                SizedBox(
                  width: 12,
                  height: 5,
                  child: Image.asset("images/BottomArrow.png"),
                ),
                SizedBox(width: 100)
              ],
            )
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
