import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bmi_calculator/input_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new InputPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff545454),
      width: double.infinity,
      height: double.infinity,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Hero(
              child: Image.asset('images/Logo.png'),
              tag: 'logo',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: Container(
              child: CircularProgressIndicator(
                backgroundColor: Color(0xff545454),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
