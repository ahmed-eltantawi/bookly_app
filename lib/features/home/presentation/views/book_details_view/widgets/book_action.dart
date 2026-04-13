import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              inLeft: true,
              color: Colors.white,
              onTap: () {},
              textWidget: Text(
                "19.99 €",
                style: Styles.montserratBold.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              color: Color(0xffEF8262),
              onTap: () {},
              textWidget: Text(
                "Free preview",
                style: Styles.gtSectra20.copyWith(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
