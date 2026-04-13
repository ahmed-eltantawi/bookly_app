import 'package:bookly_app/core/utils/images_assets.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/presentation/views/home_view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: .only(bottom: 20),
          child: BestSellerListViewItem(
            book: BookEntity(
              price: 19.99,
              rate: 4.8,
              image: Assets.book1,
              title: "Harry Potter and the Goblet of Fire",
              author: "J.K. Rowling",
            ),
          ),
        );
      },
    );
  }
}
