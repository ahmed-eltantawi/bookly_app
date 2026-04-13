import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/domain/entities/book_model.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_rate_widget.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.17,
            ),
            child: CustomBookImage(imageSource: book.image),
          ),
          SizedBox(height: 32),
          Text(book.title, style: Styles.gtSectra20, textAlign: .center),

          Text(
            book.author,
            style: Styles.montserratRegular,
            textAlign: .center,
          ),
          SizedBox(height: 8),
          BookRateWidget(),
        ],
      ),
    );
  }
}
