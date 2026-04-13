import 'package:bookly_app/core/utils/font_assets.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle montserratSemibold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: FontAssets.montserrat,
  );
  static const TextStyle montserratBold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    fontFamily: FontAssets.montserrat,
  );
  static const TextStyle montserratMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: FontAssets.montserrat,
  );
  static const TextStyle montserratRegular = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: FontAssets.montserrat,
  );
  static const TextStyle gtSectra20 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: FontAssets.gtSectra,
  );
}
