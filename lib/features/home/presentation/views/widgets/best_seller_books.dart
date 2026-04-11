import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BestSellerBooks extends StatelessWidget {
  const BestSellerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [Text("Best Seller", style: AppStyle.mediumTitle)],
      ),
    );
  }
}
