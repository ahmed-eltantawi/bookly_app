import 'package:bookly_app/core/utils/images_assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.17,
            ),
            child: CustomBookImage(imageSource: Assets.book1),
          ),
        ],
      ),
    );
  }
}
