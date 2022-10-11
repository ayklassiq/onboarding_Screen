import 'package:flutter/material.dart';

class OnBoardingText extends StatelessWidget {
  final String title;
  final Color color;
  final double fSize;


  const OnBoardingText({
    required this.title,
    required this.fSize,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
