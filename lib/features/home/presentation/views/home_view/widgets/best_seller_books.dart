import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/home_view/widgets/best_seller_books_list_view.dart';
import 'package:flutter/material.dart';

class BestSellerBooks extends StatelessWidget {
  const BestSellerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Best Seller", style: Styles.montserratSemibold),
            ),
            SizedBox(height: 16),
            Expanded(child: SizedBox(child: BestSellerBooksListView())),
          ],
        ),
      ),
    );
  }
}
