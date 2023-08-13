
import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
        AssetsData.Logo,
        width: 250,
        ),
        const SizedBox(height: 8,),
        const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          ),
      ],
    );
  }
}