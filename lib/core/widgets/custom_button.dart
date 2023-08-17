import 'package:flutter/material.dart';

import '../utilits/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.textColor,
      required this.backgroundColor,
      this.borderRadius,
      this.fontsize});

  final String title;
  final Color textColor;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
      ),
    );
  }
}
