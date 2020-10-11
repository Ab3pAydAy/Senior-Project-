import 'package:flutter/material.dart';
import 'package:habittracker/screens/data_screen.dart';
import 'dart:async';
import 'package:habittracker/screens/home_data_screen.dart';
import 'home_data_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Datascreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("AMOTION",
              style: TextStyle(
                  fontSize: 58,
                  color: Colors.cyan[400],
                  fontWeight: FontWeight.w600)),
          new Text('Great Coffee at Home',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ))
        ],
      ),
      alignment: Alignment(0.10, 1.0),
    ));
  }
}
