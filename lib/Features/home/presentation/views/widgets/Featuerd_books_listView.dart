import 'package:book_app/Features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_app/core/widgets/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.31,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child:  CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(errorMessage: state.errorMessage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
