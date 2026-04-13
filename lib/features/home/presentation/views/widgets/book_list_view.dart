import 'package:bookly_app/core/utils/images_assets.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image_widget.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: BookImageWidget(imageSource: Assets.book1),
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}
