import 'package:bookly_app/features/home/presentation/view/details_view.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kDetailsView = '/DetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(path: kDetailsView, builder: (context, state) => DetailsView())
    ],
  );
}
