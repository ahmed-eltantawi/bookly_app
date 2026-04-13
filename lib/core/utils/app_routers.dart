import 'package:bookly_app/features/home/domain/entities/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const String kHomeView = "/HomeView";
  static const String kBookDetailsView = "/BookDetailsView";
  static const String kSplashView = "/SplashView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          final book = state.extra as BookModel;
          return BookDetailsView(book: book);
        },
      ),
    ],
  );
}
