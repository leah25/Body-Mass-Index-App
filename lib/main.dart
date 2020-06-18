import 'package:bodymassindexapp/Splash.dart';

import 'Results_Page.dart';
import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'Splash.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFce93d8),
        scaffoldBackgroundColor: Color(0xFFce93d8),
      ),
      home: SplashScreen(),
//      initialRoute: '/',
    //
//
//      routes: {
//        '/first': (context) => InputPage(),
//        '/second' : (context) => ResultsPage(),
//      },
    );
  }
}


