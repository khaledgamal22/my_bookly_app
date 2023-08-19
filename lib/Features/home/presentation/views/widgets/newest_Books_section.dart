import 'package:flutter/material.dart';

import '../../../../../core/utilits/styles.dart';
import 'newest_books_listView.dart';

class NewestBooksSection extends StatelessWidget {
  const NewestBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Newest Books',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: NewestBooksListView(),
          ),
        ],
      ),
    );
  }
}
