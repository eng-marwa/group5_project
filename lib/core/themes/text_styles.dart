import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group5_project/gen/colors.gen.dart';
import 'package:group5_project/gen/fonts.gen.dart';

class TextStyles {
  static TextStyle get title => TextStyle(
      color: ColorName.colorPrimary,
      fontFamily: FontFamily.merriweather,
      fontWeight: FontWeight.w900,
      fontSize: 16.sp);

  static TextStyle get more => TextStyle(
      color: ColorName.strokeColor,
      fontFamily: FontFamily.mulish,
      fontWeight: FontWeight.normal,
      fontSize: 10.sp);

  static TextStyle get movieTitle => TextStyle(
      color: ColorName.black,
      fontFamily: FontFamily.mulish,
      fontWeight: FontWeight.bold,
      fontSize: 14.sp);

  static TextStyle get ratingText => TextStyle(
      color: ColorName.ratingColor,
      fontFamily: FontFamily.mulish,
      fontWeight: FontWeight.normal,
      fontSize: 12.sp);

  static TextStyle get releaseDate => TextStyle(
      color: ColorName.black,
      fontFamily: FontFamily.mulish,
      fontWeight: FontWeight.normal,
      fontSize: 12.sp);

  static TextStyle get tag => TextStyle(
      color: ColorName.tagTextColor,
      fontFamily: FontFamily.mulish,
      fontWeight: FontWeight.bold,
      fontSize: 8.sp);
}
