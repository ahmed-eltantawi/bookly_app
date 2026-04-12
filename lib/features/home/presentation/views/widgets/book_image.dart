import 'package:bookly_app/core/utils/images_assets.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.imageSur});
  final String imageSur;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageSur)),
          borderRadius: .circular(16),
        ),
      ),
    );
  }
}
