import 'package:book_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.31,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return const CustomBookImage();
        },
      ),
    );
  }
}