import 'package:bookly_app/features/home/domain/entities/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view/widgets/smeller_books_section.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_rate_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: .center,
              children: [
                BookDetailsSection(book: book),
                const SizedBox(height: 8),
                const BookRateWidget(),
                const SizedBox(height: 40),
                const BookAction(),
                const Expanded(child: SizedBox(height: 40)),
                SmellerBooksSection(image: book.image),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
