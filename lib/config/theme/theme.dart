import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/colors_manager.dart';

class AppTheme{
  static ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent,
          scrolledUnderElevation: 0
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor:ColorsManager.primaryColor,
          primary: ColorsManager.primaryColor
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            color: ColorsManager.headlineColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins"
        ),
        titleMedium: TextStyle(
            color: ColorsManager.primaryColor.withOpacity(0.6),
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid
        ),
      )
  );
}