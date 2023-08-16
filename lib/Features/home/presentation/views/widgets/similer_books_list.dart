import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*0.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: const CustomBookImage(),
          );
        },
      ),
    );;
  }
}