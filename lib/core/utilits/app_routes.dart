import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repo_implement.dart';
import 'package:book_app/Features/home/presentation/view_models/similer_cubit/similer_cubit.dart';
import 'package:book_app/Features/home/presentation/views/book_details_view.dart';
import 'package:book_app/Features/search/presentation/views/search_view.dart';
import 'package:book_app/core/utilits/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';

abstract class Approuter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetails';
  static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilerCubit(getIt.get<HomeRepoImplementation>()),
        child: BookDetailsView(book: state.extra as BookModel,),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => SearchView(),
    ),
  ]);
}
