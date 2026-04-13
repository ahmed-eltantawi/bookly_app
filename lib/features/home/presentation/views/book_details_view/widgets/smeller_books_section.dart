import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SmellerBooksSection extends StatelessWidget {
  const SmellerBooksSection({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text("You can also see", style: Styles.montserratSemibold),
        const SizedBox(height: 15),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 16),
                child: CustomBookImage(imageSource: image),
              );
            },
          ),
        ),
      ],
    );
  }
}
