import 'package:flutter/material.dart';
import 'package:medi/core/config/app_color.dart';
import 'package:medi/core/constants/app_constants.dart';

import 'app_textstyles.dart';

class AppTheme {
  static final AppTextStyle _textStyle = AppTextStyle.instance;

  static ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.primaryColor,
    cardColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primaryColor,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    // primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge,
      displayMedium: _textStyle.displayMedium,
      displaySmall: _textStyle.displaySmall,
      headlineLarge: _textStyle.headlineLarge,
      headlineMedium: _textStyle.headlineMedium,
      headlineSmall: _textStyle.headlineSmall,
      titleLarge: _textStyle.titleLarge,
      titleSmall: _textStyle.titleSmall,
      titleMedium: _textStyle.titleMedium,
      labelLarge: _textStyle.labelLarge,
      labelMedium: _textStyle.labelMedium,
      labelSmall: _textStyle.labelSmall,
      bodyLarge: _textStyle.bodyLarge,
      bodyMedium: _textStyle.bodyMedium,
      bodySmall: _textStyle.bodySmall,
    ), colorScheme: ColorScheme(background: AppColor.primaryColor, primary:AppColor.primaryColor,
      brightness: Brightness.light, onPrimary: AppColor.primaryColor, secondary: AppColor.secondaryColor, onSecondary: AppColor.secondaryColor,
      error: AppColor.accentColor, onError: AppColor.accentColor, onBackground: AppColor.primaryColor, surface: AppColor.primaryColor, onSurface: AppColor.primaryColor),
  );
}