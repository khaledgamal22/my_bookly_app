import 'package:book_app/Features/search/presentation/views/widgets/search_list_view.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomTextSearchField(),
          const SizedBox(
            height: 30,
          ),
          const Text(
                'Search Result',
                style: Styles.textStyle18,
              ),
              const SizedBox(
                height: 10,
              ),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}


