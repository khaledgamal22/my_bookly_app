import 'package:book_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'similer_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimilerBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
