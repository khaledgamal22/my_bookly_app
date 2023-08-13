
import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
      AssetsData.Logo,
      width: 250,
      ),
    );
  }
}