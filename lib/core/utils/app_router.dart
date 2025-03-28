import 'package:bookly_app/features/search/presentation/views/search_view.dart';

import '../../features/home/presentation/view/details_view.dart';
import '../../features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kDetailsView = '/DetailsView';
  static const String kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kDetailsView, builder: (context, state) => const DetailsView()),
      GoRoute(path: kSearchView, builder: (context, state) => const SearchView()),
    ],
  );
}
