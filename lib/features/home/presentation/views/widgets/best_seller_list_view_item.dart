import 'package:bookly_app/core/utils/images_assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Image.asset(Assets.book1)]);
  }
}
