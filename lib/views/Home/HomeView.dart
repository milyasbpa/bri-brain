import 'package:bribrain_project/widgets/LandingPage/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:bribrain_project/widgets/NavBar/NavBar.dart';
// import 'package:bribrain_project/widgets/LandingPage/LandingPage.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            NavBar(),
            LandingPage(),
          ],
        ),
      ),
    );
  }
}
