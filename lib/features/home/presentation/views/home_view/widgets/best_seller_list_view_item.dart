import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_rate_widget.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDetailsView, extra: book);
      },
      child: Row(
        children: [
          SizedBox(
            height: 130,
            child: CustomBookImage(imageSource: book.image),
          ),
          const SizedBox(width: 28),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  book.title,
                  style: Styles.gtSectra20,
                  maxLines: 2,
                  overflow: .ellipsis,
                ),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    book.author,
                    style: Styles.montserratMedium.copyWith(fontSize: 14),
                  ),
                ),
                Row(
                  children: [
                    Text("${book.price} €", style: Styles.montserratBold),
                    const Spacer(),
                    BookRateWidget(rate: book.rate),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
