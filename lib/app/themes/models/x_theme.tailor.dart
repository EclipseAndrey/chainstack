// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'x_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$XThemeTailorMixin on ThemeExtension<XTheme> {
  XColors get colors;
  XTextTheme get text;
  XOptions get options;

  @override
  XTheme copyWith({XColors? colors, XTextTheme? text, XOptions? options}) {
    return XTheme(colors: colors ?? this.colors, text: text ?? this.text, options: options ?? this.options);
  }

  @override
  XTheme lerp(covariant ThemeExtension<XTheme>? other, double t) {
    if (other is! XTheme) return this as XTheme;
    return XTheme(
      colors: colors.lerp(other.colors, t) as XColors,
      text: text.lerp(other.text, t) as XTextTheme,
      options: options.lerp(other.options, t) as XOptions,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XTheme &&
            const DeepCollectionEquality().equals(colors, other.colors) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality().equals(options, other.options));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(options),
    );
  }
}

extension CrThemeThemeDataProps on ThemeData {
  XTheme get crTheme => extension<XTheme>()!;
  XColors get colors => crTheme.colors;
  XTextTheme get text => crTheme.text;
  XOptions get options => crTheme.options;
}

mixin _$CrOptionsTailorMixin on ThemeExtension<XOptions> {
  EdgeInsets get contentPadding;
  double get iosBottomSafeAreaHeight;
  double get listTileIconSize;
  EdgeInsets get buttonMargin;
  EdgeInsets get formInputMargin;

  @override
  XOptions copyWith({
    EdgeInsets? contentPadding,
    double? iosBottomSafeAreaHeight,
    double? listTileIconSize,
    EdgeInsets? buttonMargin,
    EdgeInsets? formInputMargin,
  }) {
    return XOptions(
      contentPadding: contentPadding ?? this.contentPadding,
      iosBottomSafeAreaHeight: iosBottomSafeAreaHeight ?? this.iosBottomSafeAreaHeight,
      listTileIconSize: listTileIconSize ?? this.listTileIconSize,
      buttonMargin: buttonMargin ?? this.buttonMargin,
      formInputMargin: formInputMargin ?? this.formInputMargin,
    );
  }

  @override
  XOptions lerp(covariant ThemeExtension<XOptions>? other, double t) {
    if (other is! XOptions) return this as XOptions;
    return XOptions(
      contentPadding: t < 0.5 ? contentPadding : other.contentPadding,
      iosBottomSafeAreaHeight: t < 0.5 ? iosBottomSafeAreaHeight : other.iosBottomSafeAreaHeight,
      listTileIconSize: t < 0.5 ? listTileIconSize : other.listTileIconSize,
      buttonMargin: t < 0.5 ? buttonMargin : other.buttonMargin,
      formInputMargin: t < 0.5 ? formInputMargin : other.formInputMargin,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XOptions &&
            const DeepCollectionEquality().equals(contentPadding, other.contentPadding) &&
            const DeepCollectionEquality().equals(iosBottomSafeAreaHeight, other.iosBottomSafeAreaHeight) &&
            const DeepCollectionEquality().equals(listTileIconSize, other.listTileIconSize) &&
            const DeepCollectionEquality().equals(buttonMargin, other.buttonMargin) &&
            const DeepCollectionEquality().equals(formInputMargin, other.formInputMargin));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(contentPadding),
      const DeepCollectionEquality().hash(iosBottomSafeAreaHeight),
      const DeepCollectionEquality().hash(listTileIconSize),
      const DeepCollectionEquality().hash(buttonMargin),
      const DeepCollectionEquality().hash(formInputMargin),
    );
  }
}

mixin _$CrTextThemeTailorMixin on ThemeExtension<XTextTheme> {
  TextStyle get headline1;
  TextStyle get headline2;
  TextStyle get headline3;
  TextStyle get headline4;
  TextStyle get headline5;
  TextStyle get subtitlePrimaryBold;
  TextStyle get subtitlePrimarySemibold;
  TextStyle get subtitlePrimaryMedium;
  TextStyle get subtitlePrimaryRegular;
  TextStyle get subtitleSecondaryBold;
  TextStyle get subtitleSecondarySemibold;
  TextStyle get subtitleSecondaryMedium;
  TextStyle get subtitleSecondaryRegular;
  TextStyle get bodyPrimaryBold;
  TextStyle get bodyPrimarySemibold;
  TextStyle get bodyPrimaryMedium;
  TextStyle get bodyPrimaryRegular;
  TextStyle get bodySecondaryBold;
  TextStyle get bodySecondarySemibold;
  TextStyle get bodySecondaryMedium;
  TextStyle get bodySecondaryRegular;
  TextStyle get bodySecondaryCapsMedium;
  TextStyle get deprecated;

  @override
  XTextTheme copyWith({
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? headline4,
    TextStyle? headline5,
    TextStyle? subtitlePrimaryBold,
    TextStyle? subtitlePrimarySemibold,
    TextStyle? subtitlePrimaryMedium,
    TextStyle? subtitlePrimaryRegular,
    TextStyle? subtitleSecondaryBold,
    TextStyle? subtitleSecondarySemibold,
    TextStyle? subtitleSecondaryMedium,
    TextStyle? subtitleSecondaryRegular,
    TextStyle? bodyPrimaryBold,
    TextStyle? bodyPrimarySemibold,
    TextStyle? bodyPrimaryMedium,
    TextStyle? bodyPrimaryRegular,
    TextStyle? bodySecondaryBold,
    TextStyle? bodySecondarySemibold,
    TextStyle? bodySecondaryMedium,
    TextStyle? bodySecondaryRegular,
    TextStyle? bodySecondaryCapsMedium,
    TextStyle? deprecated,
  }) {
    return XTextTheme(
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      headline4: headline4 ?? this.headline4,
      headline5: headline5 ?? this.headline5,
      subtitlePrimaryBold: subtitlePrimaryBold ?? this.subtitlePrimaryBold,
      subtitlePrimarySemibold: subtitlePrimarySemibold ?? this.subtitlePrimarySemibold,
      subtitlePrimaryMedium: subtitlePrimaryMedium ?? this.subtitlePrimaryMedium,
      subtitlePrimaryRegular: subtitlePrimaryRegular ?? this.subtitlePrimaryRegular,
      subtitleSecondaryBold: subtitleSecondaryBold ?? this.subtitleSecondaryBold,
      subtitleSecondarySemibold: subtitleSecondarySemibold ?? this.subtitleSecondarySemibold,
      subtitleSecondaryMedium: subtitleSecondaryMedium ?? this.subtitleSecondaryMedium,
      subtitleSecondaryRegular: subtitleSecondaryRegular ?? this.subtitleSecondaryRegular,
      bodyPrimaryBold: bodyPrimaryBold ?? this.bodyPrimaryBold,
      bodyPrimarySemibold: bodyPrimarySemibold ?? this.bodyPrimarySemibold,
      bodyPrimaryMedium: bodyPrimaryMedium ?? this.bodyPrimaryMedium,
      bodyPrimaryRegular: bodyPrimaryRegular ?? this.bodyPrimaryRegular,
      bodySecondaryBold: bodySecondaryBold ?? this.bodySecondaryBold,
      bodySecondarySemibold: bodySecondarySemibold ?? this.bodySecondarySemibold,
      bodySecondaryMedium: bodySecondaryMedium ?? this.bodySecondaryMedium,
      bodySecondaryRegular: bodySecondaryRegular ?? this.bodySecondaryRegular,
      bodySecondaryCapsMedium: bodySecondaryCapsMedium ?? this.bodySecondaryCapsMedium,
      deprecated: deprecated ?? this.deprecated,
    );
  }

  @override
  XTextTheme lerp(covariant ThemeExtension<XTextTheme>? other, double t) {
    if (other is! XTextTheme) return this as XTextTheme;
    return XTextTheme(
      headline1: TextStyle.lerp(headline1, other.headline1, t)!,
      headline2: TextStyle.lerp(headline2, other.headline2, t)!,
      headline3: TextStyle.lerp(headline3, other.headline3, t)!,
      headline4: TextStyle.lerp(headline4, other.headline4, t)!,
      headline5: TextStyle.lerp(headline5, other.headline5, t)!,
      subtitlePrimaryBold: TextStyle.lerp(subtitlePrimaryBold, other.subtitlePrimaryBold, t)!,
      subtitlePrimarySemibold: TextStyle.lerp(subtitlePrimarySemibold, other.subtitlePrimarySemibold, t)!,
      subtitlePrimaryMedium: TextStyle.lerp(subtitlePrimaryMedium, other.subtitlePrimaryMedium, t)!,
      subtitlePrimaryRegular: TextStyle.lerp(subtitlePrimaryRegular, other.subtitlePrimaryRegular, t)!,
      subtitleSecondaryBold: TextStyle.lerp(subtitleSecondaryBold, other.subtitleSecondaryBold, t)!,
      subtitleSecondarySemibold: TextStyle.lerp(subtitleSecondarySemibold, other.subtitleSecondarySemibold, t)!,
      subtitleSecondaryMedium: TextStyle.lerp(subtitleSecondaryMedium, other.subtitleSecondaryMedium, t)!,
      subtitleSecondaryRegular: TextStyle.lerp(subtitleSecondaryRegular, other.subtitleSecondaryRegular, t)!,
      bodyPrimaryBold: TextStyle.lerp(bodyPrimaryBold, other.bodyPrimaryBold, t)!,
      bodyPrimarySemibold: TextStyle.lerp(bodyPrimarySemibold, other.bodyPrimarySemibold, t)!,
      bodyPrimaryMedium: TextStyle.lerp(bodyPrimaryMedium, other.bodyPrimaryMedium, t)!,
      bodyPrimaryRegular: TextStyle.lerp(bodyPrimaryRegular, other.bodyPrimaryRegular, t)!,
      bodySecondaryBold: TextStyle.lerp(bodySecondaryBold, other.bodySecondaryBold, t)!,
      bodySecondarySemibold: TextStyle.lerp(bodySecondarySemibold, other.bodySecondarySemibold, t)!,
      bodySecondaryMedium: TextStyle.lerp(bodySecondaryMedium, other.bodySecondaryMedium, t)!,
      bodySecondaryRegular: TextStyle.lerp(bodySecondaryRegular, other.bodySecondaryRegular, t)!,
      bodySecondaryCapsMedium: TextStyle.lerp(bodySecondaryCapsMedium, other.bodySecondaryCapsMedium, t)!,
      deprecated: TextStyle.lerp(deprecated, other.deprecated, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XTextTheme &&
            const DeepCollectionEquality().equals(headline1, other.headline1) &&
            const DeepCollectionEquality().equals(headline2, other.headline2) &&
            const DeepCollectionEquality().equals(headline3, other.headline3) &&
            const DeepCollectionEquality().equals(headline4, other.headline4) &&
            const DeepCollectionEquality().equals(headline5, other.headline5) &&
            const DeepCollectionEquality().equals(subtitlePrimaryBold, other.subtitlePrimaryBold) &&
            const DeepCollectionEquality().equals(subtitlePrimarySemibold, other.subtitlePrimarySemibold) &&
            const DeepCollectionEquality().equals(subtitlePrimaryMedium, other.subtitlePrimaryMedium) &&
            const DeepCollectionEquality().equals(subtitlePrimaryRegular, other.subtitlePrimaryRegular) &&
            const DeepCollectionEquality().equals(subtitleSecondaryBold, other.subtitleSecondaryBold) &&
            const DeepCollectionEquality().equals(subtitleSecondarySemibold, other.subtitleSecondarySemibold) &&
            const DeepCollectionEquality().equals(subtitleSecondaryMedium, other.subtitleSecondaryMedium) &&
            const DeepCollectionEquality().equals(subtitleSecondaryRegular, other.subtitleSecondaryRegular) &&
            const DeepCollectionEquality().equals(bodyPrimaryBold, other.bodyPrimaryBold) &&
            const DeepCollectionEquality().equals(bodyPrimarySemibold, other.bodyPrimarySemibold) &&
            const DeepCollectionEquality().equals(bodyPrimaryMedium, other.bodyPrimaryMedium) &&
            const DeepCollectionEquality().equals(bodyPrimaryRegular, other.bodyPrimaryRegular) &&
            const DeepCollectionEquality().equals(bodySecondaryBold, other.bodySecondaryBold) &&
            const DeepCollectionEquality().equals(bodySecondarySemibold, other.bodySecondarySemibold) &&
            const DeepCollectionEquality().equals(bodySecondaryMedium, other.bodySecondaryMedium) &&
            const DeepCollectionEquality().equals(bodySecondaryRegular, other.bodySecondaryRegular) &&
            const DeepCollectionEquality().equals(bodySecondaryCapsMedium, other.bodySecondaryCapsMedium) &&
            const DeepCollectionEquality().equals(deprecated, other.deprecated));
  }

  @override
  int get hashCode {
    return Object.hashAll([
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(headline1),
      const DeepCollectionEquality().hash(headline2),
      const DeepCollectionEquality().hash(headline3),
      const DeepCollectionEquality().hash(headline4),
      const DeepCollectionEquality().hash(headline5),
      const DeepCollectionEquality().hash(subtitlePrimaryBold),
      const DeepCollectionEquality().hash(subtitlePrimarySemibold),
      const DeepCollectionEquality().hash(subtitlePrimaryMedium),
      const DeepCollectionEquality().hash(subtitlePrimaryRegular),
      const DeepCollectionEquality().hash(subtitleSecondaryBold),
      const DeepCollectionEquality().hash(subtitleSecondarySemibold),
      const DeepCollectionEquality().hash(subtitleSecondaryMedium),
      const DeepCollectionEquality().hash(subtitleSecondaryRegular),
      const DeepCollectionEquality().hash(bodyPrimaryBold),
      const DeepCollectionEquality().hash(bodyPrimarySemibold),
      const DeepCollectionEquality().hash(bodyPrimaryMedium),
      const DeepCollectionEquality().hash(bodyPrimaryRegular),
      const DeepCollectionEquality().hash(bodySecondaryBold),
      const DeepCollectionEquality().hash(bodySecondarySemibold),
      const DeepCollectionEquality().hash(bodySecondaryMedium),
      const DeepCollectionEquality().hash(bodySecondaryRegular),
      const DeepCollectionEquality().hash(bodySecondaryCapsMedium),
      const DeepCollectionEquality().hash(deprecated),
    ]);
  }
}
