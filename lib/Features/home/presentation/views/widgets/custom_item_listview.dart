import 'package:flutter/material.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.33,
      child: AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('assets/images/test_image.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
      ),
    );
  }
}