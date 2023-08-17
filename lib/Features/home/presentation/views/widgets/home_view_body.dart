import 'package:book_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/Featuerd_books_listView.dart';
import 'package:book_app/core/utilits/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'best_seller_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(
                  onPressed: () {
                    GoRouter.of(context).push(Approuter.kSearchView);
                  },
                ),
              ),
              FeaturedBooksList(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        BestSellerSection(),
      ],
    );
  }
}
