import 'package:flutter/material.dart';

class Sizes {

  //Padding and margin Sizes
  static const double xxs = 2.0;
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;

  //Icon sizes
  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;

  //Font sizes
  static const double fontSizesSm = 16.0;
  static const double fontSizesMd = 24.0;
  static const double fontSizesLg = 32.0;

  // Default Sizes
  static const double spaceBtwItems = 24.0;
  static const double spaceBtwSections = 32.0;

  //Appbar Height
  static const double appBarHeight = 56.0;

  /// default Space 16
  static double responsiveDefaultSpace(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.04;
  }

  static double responsiveXxs(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.005;
  }

  static double responsiveXs(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.01;
  }

  static double responsiveSm(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.02;
  }

  static double responsiveMdSm(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.03;
  }
  static double responsiveMd(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.04;
  }

  static double responsiveLg(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.06;
  }

  static double responsiveXl(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.08;
  }

  /// Bigger Space 40,
  static double responsiveXxl(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.103;
  }

  /// Small vertical And Horizontal spaces
  static double responsiveVerticalSpace(BuildContext context) {
      return MediaQuery.of(context).size.width * 0.0075;
  }

  static double responsiveHorizontalSpace(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.015;
  }


  /// Default space
  static double responsiveDefaultPaddingSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.05;
  }

  static double responsiveSpaceBetweenSections(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.05;
  }

}