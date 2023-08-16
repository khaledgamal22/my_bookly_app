import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_item.dart';
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
          SizedBox(height: 35,),
          CustomTextSearchField(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 10,),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: BestSellerItem(),
        );
      },
    );
    ;
  }
}
