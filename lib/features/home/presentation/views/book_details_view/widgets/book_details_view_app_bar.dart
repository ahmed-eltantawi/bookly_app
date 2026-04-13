import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class BookDetailsViewAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const BookDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
