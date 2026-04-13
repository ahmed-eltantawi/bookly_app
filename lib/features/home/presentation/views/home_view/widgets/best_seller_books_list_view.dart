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
        return const Padding(
          padding: .only(bottom: 20),
          child: BestSellerListViewItem(
            bookName: "Harry Potter and the Goblet of Fire",
            writer: "J.K. Rowling",
          ),
        );
      },
    );
  }
}
