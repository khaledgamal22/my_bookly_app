import 'package:book_app/constant.dart';
import 'package:book_app/core/utilits/app_routes.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.kBookDetailsView);
      },
      child: SizedBox(
        height: 118,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 0.65,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/images/test_image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
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
                      'Harry Potter and the Globel of Fire',
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
                    'Rudyard Kipling',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.9 €',
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
