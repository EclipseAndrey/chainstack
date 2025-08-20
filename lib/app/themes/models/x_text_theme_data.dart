import 'package:chainstack/app/themes/colors/app_colors.dart';
import 'package:flutter/material.dart';

abstract class XTextThemeData {
  static TextStyle baseTextStyle(Brightness brightness) => TextStyle(
    color: switch (brightness) {
      Brightness.dark => AppColors.backgroundDarkBase,
      Brightness.light => AppColors.backgroundLightBase,
    },
    fontFeatures: const [FontFeature.caseSensitiveForms()],
  );

  static TextStyle inter(Brightness brightness) => baseTextStyle(brightness).copyWith(fontFamily: 'Inter');
  static TextStyle onest(Brightness brightness) => baseTextStyle(brightness).copyWith(fontFamily: 'Onest');
  static TextStyle martianMono(Brightness brightness) => baseTextStyle(brightness).copyWith(fontFamily: 'MartianMono');

  static TextStyle headline1(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 33, fontWeight: FontWeight.w700, height: 40 / 33);

  static TextStyle headline2(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 27, fontWeight: FontWeight.w700, height: 32 / 27);

  static TextStyle headline3(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 25, fontWeight: FontWeight.w700, height: 30 / 25);

  static TextStyle headline4(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 19, fontWeight: FontWeight.w700, height: 24 / 19);

  static TextStyle headline5(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 17, fontWeight: FontWeight.w700, height: 20 / 17);

  static TextStyle subtitlePrimaryBold(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 19, fontWeight: FontWeight.w700, height: 24 / 19);

  static TextStyle subtitlePrimarySemibold(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 19, fontWeight: FontWeight.w600, height: 24 / 19);

  static TextStyle subtitlePrimaryMedium(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 19, fontWeight: FontWeight.w500, height: 24 / 19);

  static TextStyle subtitlePrimaryRegular(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 19, fontWeight: FontWeight.w400, height: 24 / 19);

  static TextStyle subtitleSecondaryBold(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 15, fontWeight: FontWeight.w700, height: 24 / 15);

  static TextStyle subtitleSecondarySemibold(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 15, fontWeight: FontWeight.w600, height: 24 / 15);

  static TextStyle subtitleSecondaryMedium(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 15, fontWeight: FontWeight.w500, height: 24 / 15);

  static TextStyle subtitleSecondaryRegular(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 15, fontWeight: FontWeight.w400, height: 24 / 15);

  static TextStyle bodyPrimaryBold(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 13, fontWeight: FontWeight.w700, height: 16 / 13);

  static TextStyle bodyPrimarySemibold(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 13, fontWeight: FontWeight.w600, height: 16 / 13);

  static TextStyle bodyPrimaryMedium(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 13, fontWeight: FontWeight.w500, height: 16 / 13);

  static TextStyle bodyPrimaryRegular(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 13, fontWeight: FontWeight.w400, height: 16 / 13);

  static TextStyle bodySecondaryBold(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 11, fontWeight: FontWeight.w700, height: 16 / 11);

  static TextStyle bodySecondarySemibold(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 11, fontWeight: FontWeight.w600, height: 16 / 11);

  static TextStyle bodySecondaryMedium(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 11, fontWeight: FontWeight.w500, height: 16 / 11);

  static TextStyle bodySecondaryRegular(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 11, fontWeight: FontWeight.w400, height: 16 / 11);

  static TextStyle bodySecondaryCapsMedium(Brightness brightness) =>
      onest(brightness).copyWith(fontSize: 11, fontWeight: FontWeight.w500, height: 16 / 11, letterSpacing: 16 * 0.08);
}
