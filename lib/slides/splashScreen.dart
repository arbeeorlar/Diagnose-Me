import 'dart:async';

import 'package:flutter/material.dart';
import 'package:self_diagnose/slides/walkThroughScreen.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.blueGrey;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  final splashDelay = 7000;
  @override
  void initState(){
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(milliseconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => WalkThroughScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Assets/images/applogo.png',
                        height: 200,
                        width: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
