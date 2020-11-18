import 'package:flutter/material.dart';
import 'package:bribrain_project/utils/RouteGenerator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BRI Brain',
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: '/',
    );
  }
}