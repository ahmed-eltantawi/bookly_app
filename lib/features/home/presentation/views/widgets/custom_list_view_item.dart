import 'package:bookly_app/core/utils/images_assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.book1)),
          color: Colors.red,
          borderRadius: .circular(20),
        ),
      ),
    );
  }
}
