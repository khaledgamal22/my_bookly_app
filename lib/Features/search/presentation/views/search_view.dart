import 'package:book_app/Features/search/data/repos/search_repo_implementaion.dart';
import 'package:book_app/Features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:book_app/core/utilits/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (context) => SearchCubit(
          getIt.get<SearchRepoImplementation>()
        ),
        child: SearchViewBody(),
      )),
    );
  }
}
