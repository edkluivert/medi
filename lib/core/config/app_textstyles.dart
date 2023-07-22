import 'package:flutter/material.dart';

import '../config/app_color.dart';

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();



  /// Discover, card title,
  TextStyle displayLarge = const TextStyle(
    color: Colors.white,
    fontSize: 34,
    fontWeight: FontWeight.w700,
  );

  /// categories tab, card subtitle
  TextStyle displayMedium = const TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w400,

  );

/// Recommended, see all
  TextStyle displaySmall = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );


  TextStyle headlineLarge = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,

  );


  TextStyle headlineMedium = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,

  );


  TextStyle headlineSmall = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );



  TextStyle titleLarge =  TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColor.primaryColor,
    fontSize: 18,

  );


  TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColor.primaryColor,
    fontSize: 10,
  );



  TextStyle titleSmall = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );


  TextStyle labelLarge =  TextStyle(
    color: AppColor.primaryColor,
    fontSize: 9,
    fontWeight: FontWeight.w400,

  );


  TextStyle labelMedium = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,

  );


  TextStyle labelSmall = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );


  TextStyle bodyLarge = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,

  );


  TextStyle bodyMedium = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,


  );


  TextStyle bodySmall = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 10,
    fontWeight: FontWeight.w400,

  );

}