import 'package:flutter/material.dart';

/// @ref https://m3.material.io/styles/typography/type-scale-tokens
abstract class IAppTextTheme {
  TextStyle get displayLarge;

  TextStyle get displayMedium;

  TextStyle get displaySmall;

  TextStyle get headlineLarge;

  TextStyle get headlineMedium;

  TextStyle get headlineSmall;

  TextStyle get titleLarge;

  TextStyle get titleMedium;

  TextStyle get titleSmall;

  TextStyle get labelLarge;

  TextStyle get labelMedium;

  TextStyle get labelSmall;

  TextStyle get bodyLarge;

  TextStyle get bodyMedium;

  TextStyle get bodySmall;

  TextTheme get textTheme;
}

class BaseTextTheme implements IAppTextTheme {
  final TextStyle inter = const TextStyle(fontFamily: 'Inter');

  @override
  TextStyle get displayLarge => displayMedium;

  @override
  TextStyle get displayMedium => inter.copyWith(
        fontSize: 37,
        fontWeight: FontWeight.w400,
        height: 48 / 37,
        letterSpacing: 0,
      );

  @override
  TextStyle get displaySmall => displayMedium;

  @override
  TextStyle get headlineLarge => inter.copyWith(
        fontSize: 27,
        fontWeight: FontWeight.w700,
        height: 32 / 27,
        letterSpacing: 0,
      );

  @override
  TextStyle get headlineMedium => inter.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 32 / 24,
        letterSpacing: 0,
      );

  @override
  TextStyle get headlineSmall => inter.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        height: 20 / 17,
        letterSpacing: 0,
      );

  @override
  TextStyle get titleLarge => inter.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        height: 24 / 15,
        letterSpacing: 0,
      );

  @override
  TextStyle get titleMedium => inter.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 24 / 15,
        letterSpacing: 0,
      );

  @override
  TextStyle get titleSmall => inter.copyWith(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 16 / 13,
        letterSpacing: 0,
      );

  @override
  TextStyle get labelLarge => inter.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 24 / 15,
        letterSpacing: 0,
      );

  @override
  TextStyle get labelMedium => inter.copyWith(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 16 / 13,
        letterSpacing: 0,
      );

  @override
  TextStyle get labelSmall => inter.copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 16 / 11,
        letterSpacing: 2,
      );

  @override
  TextStyle get bodyLarge => inter.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        height: 24 / 15,
        letterSpacing: 0,
      );

  @override
  TextStyle get bodyMedium => inter.copyWith(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 16 / 13,
        letterSpacing: 0,
      );

  @override
  TextStyle get bodySmall => inter.copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        height: 14 / 11,
        letterSpacing: 0,
      );

  @override
  TextTheme get textTheme => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
      );
}
