import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_books.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .3,
            child: const BookListView(),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 54)),
        const BestSellerBooks(),
      ],
    );
  }
}
