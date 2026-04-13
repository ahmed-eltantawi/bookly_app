import 'package:bookly_app/core/utils/font_assets.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle montserratSemibold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: FontAssets.montserratSemiBold,
  );
  static const TextStyle montserratBold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: FontAssets.montserratSemiBold,
  );
  static const TextStyle montserratMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: FontAssets.montserratRegular,
  );
  static const TextStyle montserratRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: FontAssets.montserratRegular,
  );
  static const TextStyle libre20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: FontAssets.libreRegular,
  );
}
