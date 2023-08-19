import 'package:book_app/Features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_app/Features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:book_app/core/widgets/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){
          return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: state.books.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: NewestBookItem(book: state.books[index]),
            );
          },
        );
        }
        else if(state is NewestBooksFailure){
          return CustomError(errorMessage: state.errorMessage);
        }
        else{
          return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
