import 'package:book/features/home/presentation/views/book_details_view.dart';
import 'package:book/features/home/presentation/views/home_view.dart';
import 'package:book/features/search/presentation/views/search_view.dart';
import 'package:book/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: '/homeView', builder: (context, state) => const HomeView()),
      GoRoute(
        path: '/bookView',
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
