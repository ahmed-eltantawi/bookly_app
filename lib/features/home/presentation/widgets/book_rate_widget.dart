import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BookRateWidget extends StatelessWidget {
  const BookRateWidget({super.key, required this.rate});
  final num rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        const Icon(Icons.star, color: Color(0xffFFDD4F)),
        Text(
          " $rate ",
          style: Styles.montserratMedium.copyWith(color: Colors.white),
        ),
        const Opacity(
          opacity: 0.7,
          child: Text("(2390)", style: Styles.montserratRegular),
        ),
      ],
    );
  }
}
