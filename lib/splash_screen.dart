import 'dart:async';

import 'package:alphabet_animation/alphabet_animation.dart';
import 'package:flutter/material.dart';
import 'package:my_blog/pages/layout_builder.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => LayoutBuilderClass()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blueAccent,
          Colors.purpleAccent,
          Colors.orangeAccent
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: Center(
          child: AnimationTypeTwo(
            text: "Welcome",
            animationSync: AnimationSync.flip,
            duration: Duration(milliseconds: 200),
            repeat: false,
            textStyle: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
