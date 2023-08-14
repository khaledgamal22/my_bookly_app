import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        children: [
          Image.asset(AssetsData.Logo,height: 20,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 20,)),
        ],
      ),
    );
  }
}