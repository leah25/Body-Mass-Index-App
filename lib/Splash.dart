import 'dart:async';

import 'package:bodymassindexapp/InputPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.push(context, MaterialPageRoute(builder:(context)   => InputPage(),),),);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepPurple),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Color(0xFFFFFFFF),
                      backgroundImage: AssetImage('images/b1.jpg'),
                    ),
                    SizedBox(height: 10.0,),
                    Text('BMI CALCULATOR', style: TextStyle(color: Colors.white, fontSize: 30.0,fontWeight:FontWeight.bold),),
                  ],
                ),
              ),),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Curious to know about your Body Mass Index (BMI)?',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                ],
              ),),
            ],
          ),
        ],
      ),
    );
  }
}
