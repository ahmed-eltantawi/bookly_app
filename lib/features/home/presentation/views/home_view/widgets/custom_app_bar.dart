import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/images_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      actionsPadding: .symmetric(horizontal: 30),
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              SvgPicture.asset(Assets.logo),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                ),
                onPressed: () {
                  GoRouter.of(context).push(AppRouters.kSearchBookView);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
