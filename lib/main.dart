import 'package:flutter/material.dart';
import 'package:travel_app/screens/details.dart';
import 'package:travel_app/screens/home.dart';
import 'package:travel_app/setup/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      theme: Constants.lightTheme,
      //darkTheme: Constants.darkTheme,
      initialRoute: '/home',
      routes: {
        Home.routeName: (context) => Home(),
        Details.routeName: (context) => Details(),
      },
    );
  }
}
