import 'package:book_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/Featuerd_books_listView.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksList(),
          SizedBox(height: 30,),
          Text('Best Seller',style: Styles.textStyle18,),
          BestSellerItem(),
        ],
      ),
    );
  }
}
