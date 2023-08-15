import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';

abstract class Approuter{

  static const kSplashView='/';
  static const kHomeView='/homeView';
  static final router=GoRouter(
    routes:[
      GoRoute(
        path: kSplashView,
        builder: (context, state) => SplashView(),
        ),
         GoRoute(
        path:kHomeView,
        builder: (context,state)=>HomeView(),
        ),
    ] 
  );
}