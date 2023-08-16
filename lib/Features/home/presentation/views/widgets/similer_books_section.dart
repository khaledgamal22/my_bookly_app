import 'package:flutter/material.dart';

import '../../../../../core/utilits/styles.dart';
import 'similer_books_list.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        SimilerBooksListView(),
      ],
    );
  }
}