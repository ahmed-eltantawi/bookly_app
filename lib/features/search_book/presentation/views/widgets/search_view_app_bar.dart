import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: kPrimaryColor);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
