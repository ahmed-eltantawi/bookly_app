import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageSource});
  final String imageSource;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageSource)),
          borderRadius: .circular(12),
        ),
      ),
    );
  }
}
