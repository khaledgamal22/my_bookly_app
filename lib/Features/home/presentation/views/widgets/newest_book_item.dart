import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_app/constant.dart';
import 'package:book_app/core/utilits/app_routes.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({super.key,required  this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.kBookDetailsView,extra: book);
      },
      child: SizedBox(
        height: 118,
        child: Row(
          children: [
            CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail??'',),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo.title,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtFontFamily),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo.authors?[0]??'unknown',
                    style: Styles.textStyle14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
