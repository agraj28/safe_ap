import 'package:flutter/material.dart';
import 'package:safe_ap/resources/values/app_assets.dart';
import 'package:safe_ap/resources/values/app_colors.dart';


class Poppins {
  Poppins._();

  static TextStyle standardTextPoppinsStyle({
    required double fontSize,
    required String fontFamily,
    Color color = AppColors.primaryColor,
    double lineHeight = 1.25,
  }) =>
      TextStyle(
        fontSize: fontSize,
        color: color,
        height: lineHeight,
        fontFamily: fontFamily,
        letterSpacing: 1.0,
      );

  static TextStyle standardTextPoppinsStyleW200(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w200,
        fontFamily: AppFonts.poppins,
        height: lineHeight,
        fontSize: fontSize,
        letterSpacing: 1.0,
      );

  static TextStyle standardTextPoppinsStyleW300(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w300,
        fontFamily: AppFonts.poppins,
        fontSize: fontSize,
        height: lineHeight,
        letterSpacing: 1.0,
      );

  static TextStyle standardTextPoppinsStyleW400(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.poppins,
        fontSize: fontSize,
        letterSpacing: 1.0,
        height: lineHeight,
      );

  static TextStyle standardTextPoppinsStyleW500(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.poppins,
        fontSize: fontSize,
        height: lineHeight,
        letterSpacing: 1.0,
      );

  static TextStyle standardTextPoppinsStyleW600(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.poppins,
        fontSize: fontSize,
        letterSpacing: 1.0,
        height: lineHeight,
      );

  static TextStyle standardTextPoppinsStyleW700(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: AppFonts.poppins,
        fontSize: fontSize,
        letterSpacing: 1.0,
        height: lineHeight,
      );
}
