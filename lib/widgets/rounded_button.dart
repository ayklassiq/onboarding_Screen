import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color color;
  final Color tColor;
  final VoidCallback onPressed;

  final double radius;

  const RoundedButton(
      {required this.text,
        required this.color,
      required this.height,
      required this.width,
        required this.tColor,

      required this.onPressed,
        required this.radius,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: color),
        ),
        child: Center(
          child: Text(
            text,
            style:  TextStyle(color: tColor, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
