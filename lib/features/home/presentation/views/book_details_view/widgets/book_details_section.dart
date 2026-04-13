import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.17,
          ),
          child: CustomBookImage(imageSource: book.image),
        ),
        const SizedBox(height: 32),
        Text(book.title, style: Styles.gtSectra20, textAlign: .center),
        Text(book.author, style: Styles.montserratRegular, textAlign: .center),
      ],
    );
  }
}
