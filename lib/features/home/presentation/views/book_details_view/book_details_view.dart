import 'package:bookly_app/features/home/domain/entities/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view/widgets/book_details_view_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BookDetailsViewAppBar(),
      body: BookDetailsViewBody(book: book),
    );
  }
}
