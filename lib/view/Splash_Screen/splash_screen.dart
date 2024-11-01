import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quizapplication/utils/color_constants.dart';
import 'package:quizapplication/view/Home_Screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 6),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText("QUIZ APPLICATION",
                        textStyle: TextStyle(
                          fontFamily: 'arcade',
                          fontSize: 40,
                          color: ColorConstants.mainOrange,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: Duration(milliseconds: 140),
                        textAlign: TextAlign.center)
                  ],
                  isRepeatingAnimation: false,
                ),
                AnimatedTextKit(animatedTexts: [
                  TyperAnimatedText("Loading...",
                      textStyle: TextStyle(
                        fontFamily: 'arcade',
                        fontSize: 14,
                        color: ColorConstants.mainOrange,
                        fontWeight: FontWeight.w900,
                      ),
                      speed: Duration(milliseconds: 200))
                ])
              ]),
        ),
      ),
    );
  }
}
