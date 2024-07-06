import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/utils/constants/colors.dart';

class STextTheme{
  STextTheme._();

  static TextTheme textTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w500,color: Colors.black),
    headlineSmall: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.black),

    titleLarge: const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.black),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.black),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400,color: Colors.black),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: Colors.black),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.normal,color: Colors.black),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 9.0,fontWeight: FontWeight.w500,color: Colors.black),
    labelMedium: const TextStyle().copyWith(fontSize: 6.0,fontWeight: FontWeight.w400,color: AppColors.black),
    labelSmall: const TextStyle().copyWith(fontSize: 6.0,fontWeight: FontWeight.w500,color: AppColors.secondaryText)
  );
}