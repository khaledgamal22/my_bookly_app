
import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
        .animate(animationController);
    animationController.forward();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

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
        const SizedBox(
          height: 8,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}

