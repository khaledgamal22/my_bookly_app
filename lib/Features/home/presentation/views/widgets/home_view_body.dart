import 'package:book_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_item_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomItemListView(),
        ],
      ),
    );
  }
}
