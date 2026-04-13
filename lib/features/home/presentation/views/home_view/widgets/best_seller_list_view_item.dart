import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/images_assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.bookName,
    required this.writer,
  });
  final String bookName;
  final String writer;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDetailsView);
      },
      child: Row(
        children: [
          const SizedBox(
            height: 130,
            child: CustomBookImage(imageSource: Assets.book1),
          ),
          const SizedBox(width: 28),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  bookName,
                  style: Styles.gtSectra20,
                  maxLines: 2,
                  overflow: .ellipsis,
                ),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    writer,
                    style: Styles.montserratMedium.copyWith(fontSize: 14),
                  ),
                ),
                Row(
                  children: [
                    const Text("19.99 €", style: Styles.montserratBold),
                    const Spacer(),
                    const Icon(Icons.star, color: Color(0xffFFDD4F)),
                    Text(
                      " 4.8 ",
                      style: Styles.montserratMedium.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const Opacity(
                      opacity: 0.7,
                      child: Text("(2390)", style: Styles.montserratRegular),
                    ),
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
