import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class GradientElevatedButton extends StatelessWidget {
  final String text;
  final BorderRadius? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback onPressed;

  const GradientElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.borderRadius,
    this.height = 50.0,
    this.width,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(30);
    return Container(
      width: width ?? 180,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
