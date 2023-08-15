import 'package:book_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBookDetailsAppBar(),
          SizedBox(height: 10,),
          SizedBox(
            height:MediaQuery.of(context).size.height*0.31,
            child: CustomBookImage(),
          ),
        ],
      ),
    );
  }
}

