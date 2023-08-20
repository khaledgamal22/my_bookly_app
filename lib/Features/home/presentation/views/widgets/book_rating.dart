import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.book,});

  final MainAxisAlignment mainAxisAlignment;
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 18,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(book.volumeInfo.averageRating.toString(), style: Styles.textStyle16),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(${book.volumeInfo.ratingsCount})",
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
