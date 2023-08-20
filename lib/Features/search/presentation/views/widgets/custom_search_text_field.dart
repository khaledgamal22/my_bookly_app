import 'package:book_app/Features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextSearchField extends StatelessWidget {
  CustomTextSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (data){
        BlocProvider.of<SearchCubit>(context).getSearched(word: data);
      },
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
          },
          icon: Icon(
            Icons.search,
            color: Colors.white.withOpacity(0.6),
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.7),
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: Colors.white,
            )),
      ),
    );
  }
}
