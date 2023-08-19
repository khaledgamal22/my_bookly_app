import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilits/styles.dart';
import 'book_actions.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.31,
          child: CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',),
        ),
        SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors?[0]??'UnKnown',
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37,
        ),
        BookActions(),
      ],
    );
  }
}
