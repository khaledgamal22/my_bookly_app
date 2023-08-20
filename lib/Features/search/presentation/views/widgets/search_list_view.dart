import 'package:book_app/Features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:book_app/Features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:book_app/core/widgets/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utilits/styles.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            itemCount: state.booklist.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: NewestBookItem(
                  book: state.booklist[index],
                ),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomError(errorMessage: state.errorMessage);
        } else if (state is SearchLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(
            child: Text('search for any book',style: Styles.textStyle20,),
          );
        }
      },
    );
  }
}
