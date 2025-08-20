// ignore_for_file: depend_on_referenced_packages
// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:core';

import 'package:chainstack/app/themes/colors/app_colors_component.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'x_theme.tailor.dart';

/// Чтобы использовать цвета: Theme.of(context).colors (ex. Theme.of(context).colors.base)
/// Классы ниже содержать стили и для светлой, и для тёмной темы [СВЕТЛЫЙ, ТЁМНЫЙ]
/// Для общих стилей использовать метод singleValue(ОБЩИЙ СТИЛЬ)
/// Можно расширить тему для новых цветов, стилей и даже компонентов, добавив @themeExtension по аналогии
/// После добавления/обновления компонента написать: dart run build_runner build
///
/// В плане стилей текста и различных размеров/отступов - здесь лежит только то, что не влезает в
/// стандартный ThemeData, т.е. большинство стилей текста всё также в Theme.of(context).textTheme[?.bodySmall, ...],
/// а дополнительные в Theme.of(context).text (ex. Theme.of(context).text.subtitleSecondaryMedium).
///
/// Паттерн темы можно найти по ссылке
/// https://www.figma.com/file/ajh2mqoPwRpoyamjBaRGyV/%F0%9F%93%82-Tokens?type=design&node-id=4149-5925&mode=design&t=tz865q8537RkrYdk-0
///

const useNewTextStyleFormat =
    'Use new style naming format: body/label/caption/title/subtitle/headline...Primary/Secondary/Base...Regular/Medium/Bold';

@TailorMixin(themeGetter: ThemeGetter.onThemeDataProps)
class XTheme extends ThemeExtension<XTheme> with _$XThemeTailorMixin {
  @override
  final XColors colors;

  @override
  final XTextTheme text;

  @override
  final XOptions options;

  XTheme({required this.colors, required this.text, required this.options});
}

@TailorMixinComponent()
class XOptions extends ThemeExtension<XOptions> with _$CrOptionsTailorMixin {
  @override
  final EdgeInsets contentPadding;
  @override
  final double iosBottomSafeAreaHeight;
  @override
  final double listTileIconSize;
  @override
  final EdgeInsets buttonMargin;
  @override
  final EdgeInsets formInputMargin;

  XOptions({
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    this.iosBottomSafeAreaHeight = 34,
    this.listTileIconSize = 26,
    this.buttonMargin = const EdgeInsets.only(bottom: 16),
    this.formInputMargin = const EdgeInsets.only(bottom: 8),
  });
}

@TailorMixinComponent()
class XTextTheme extends ThemeExtension<XTextTheme> with _$CrTextThemeTailorMixin {
  ///body/label/caption/subtitle/headline...Primary/Secondary...Regular/Medium/Bold
  ///
  ///
  ///

  /// subtitlePrimaryBold
  /// subtitlePrimarySemibold
  /// subtitlePrimaryMedium
  /// subtitlePrimaryRegular
  /// subtitleSecondaryBold
  /// subtitleSecondarySemibold
  /// subtitleSecondaryMedium
  /// subtitleSecondaryRegular

  ///bodyPrimaryBold
  ///bodyPrimarySemibold
  ///bodyPrimaryMedium
  ///bodyPrimaryRegular
  ///bodySecondaryBold
  ///bodySecondarySemibold
  ///bodySecondaryMedium
  ///bodySecondaryRegular
  ///bodySecondaryCapsMedium

  /// headline1 40 / 33
  /// headline2 32 / 27
  /// headline3 25 / 30
  /// headline4 24 / 19
  /// headline5 20 / 17

  @override
  final TextStyle headline1;

  @override
  final TextStyle headline2;

  @override
  final TextStyle headline3;

  @override
  final TextStyle headline4;

  @override
  final TextStyle headline5;

  @override
  final TextStyle subtitlePrimaryBold;
  @override
  final TextStyle subtitlePrimarySemibold;
  @override
  final TextStyle subtitlePrimaryMedium;
  @override
  final TextStyle subtitlePrimaryRegular;
  @override
  final TextStyle subtitleSecondaryBold;
  @override
  final TextStyle subtitleSecondarySemibold;
  @override
  final TextStyle subtitleSecondaryMedium;
  @override
  final TextStyle subtitleSecondaryRegular;

  @override
  final TextStyle bodyPrimaryBold;
  @override
  final TextStyle bodyPrimarySemibold;
  @override
  final TextStyle bodyPrimaryMedium;
  @override
  final TextStyle bodyPrimaryRegular;
  @override
  final TextStyle bodySecondaryBold;
  @override
  final TextStyle bodySecondarySemibold;
  @override
  final TextStyle bodySecondaryMedium;
  @override
  final TextStyle bodySecondaryRegular;
  @override
  final TextStyle bodySecondaryCapsMedium;
  @override
  @Deprecated(useNewTextStyleFormat)
  final TextStyle deprecated;

  XTextTheme({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.headline4,
    required this.headline5,
    required this.subtitlePrimaryBold,
    required this.subtitlePrimarySemibold,
    required this.subtitlePrimaryMedium,
    required this.subtitlePrimaryRegular,
    required this.subtitleSecondaryBold,
    required this.subtitleSecondarySemibold,
    required this.subtitleSecondaryMedium,
    required this.subtitleSecondaryRegular,
    required this.bodyPrimaryBold,
    required this.bodyPrimarySemibold,
    required this.bodyPrimaryMedium,
    required this.bodyPrimaryRegular,
    required this.bodySecondaryBold,
    required this.bodySecondarySemibold,
    required this.bodySecondaryMedium,
    required this.bodySecondaryRegular,
    required this.bodySecondaryCapsMedium,
    required this.deprecated, // ignore: deprecated_consistency
  });
}
