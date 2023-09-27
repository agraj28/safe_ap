import 'package:flutter/material.dart';
import 'package:safe_ap/resources/values/app_assets.dart';
import 'package:safe_ap/resources/values/app_colors.dart';

class WorkSans {
  WorkSans._();

  static TextStyle standardTextWorkSansStyle(
          {required double fontSize,
          required String fontFamily,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        fontSize: fontSize,
        color: color,
        height: lineHeight,
        fontFamily: fontFamily,
        letterSpacing: 0,
      );

  static TextStyle standardTextWorkSansStyleW200(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w200,
        fontFamily: AppFonts.workSans,
        height: lineHeight,
        fontSize: fontSize,
        letterSpacing: 0,
      );

  static TextStyle standardTextWorkSansStyleW300(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w300,
        fontFamily: AppFonts.workSans,
        fontSize: fontSize,
        letterSpacing: 0,
        height: lineHeight,
      );

  static TextStyle standardTextWorkSansStyleW400(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.workSans,
        fontSize: fontSize,
        letterSpacing: 0,
        height: lineHeight,
      );

  static TextStyle standardTextWorkSansStyleW500(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.workSans,
        fontSize: fontSize,
        letterSpacing: 0,
        height: lineHeight,
      );

  static TextStyle standardTextWorkSansStyleW600(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.workSans,
        fontSize: fontSize,
        letterSpacing: 0,
        height: lineHeight,
      );

  static TextStyle standardTextWorkSansStyleW700(
          {required double fontSize,
          Color color = AppColors.primaryColor,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: AppFonts.workSans,
        fontSize: fontSize,
        letterSpacing: 0,
        height: lineHeight,
      );
}
