import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onboarding_screen_test/screens/onboarding.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () async {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => OnBoardingPage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 876,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(-10.0, 0.0),
                end: Alignment(1.0, 0.0),
                colors: [Color(0xff123BAF), Color(0xff0B1222)])),
        child: Center(child: Image.asset('assets/images/logo.png')));
  }
}
