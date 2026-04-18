import 'package:bookly_app/core/utils/functions/setup_service_locator.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_best_seller_books_use_case.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_news_books.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_best_seller_books_cubit/fetch_best_seller_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_news_books_cubit/fetch_news_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/home_view/widgets/best_seller_books.dart';
import 'package:bookly_app/features/home/presentation/views/home_view/widgets/news_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .3,
            child: BlocProvider(
              create: (context) => FetchNewsBooksCubit(
                FetchNewsBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()),
              ),
              child: NewsBooksListView(),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 54)),
        BlocProvider(
          create: (context) => FetchBestSellerBooksCubit(
            FetchBestSellerBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()),
          ),
          child: const BestSellerBooks(),
        ),
      ],
    );
  }
}
