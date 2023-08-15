import 'package:book_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_app/core/utilits/styles.dart';
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
          SizedBox(height: 43,),
          Text('The Jungle Book',style: Styles.textStyle30,),
          SizedBox(height: 6,),
          Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(
            color: Colors.white.withOpacity(0.7),
          ),),
        ],
      ),
    );
  }
}

