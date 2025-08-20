import 'package:chainstack/app/themes/colors/app_colors.dart';
import 'package:chainstack/app/themes/dark/text.dart';
import 'package:chainstack/app/themes/light/text.dart';
import 'package:chainstack/app/themes/models/app_text_theme.dart';
import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:flutter/material.dart';

ThemeData getLightTheme() {
  return getThemeData(Brightness.light);
}

ThemeData getDarkTheme() {
  return getThemeData(Brightness.dark);
}

ThemeData getThemeData(Brightness brightness) {
  final appTextTheme = BaseTextTheme();
  final theme = switch (brightness) {
    Brightness.light => XTheme(colors: xLightColors, text: xLightText, options: XOptions()),
    Brightness.dark => XTheme(colors: xDarkColors, text: xDarkText, options: XOptions()),
  };
  final colors = theme.colors;

  return ThemeData(
    dividerColor: colors.alphaSecondary16,
    brightness: brightness,
    primaryColor: colors.primary,
    useMaterial3: true,
    extensions: [theme],
    cardColor: colors.backgroundHigh,
    splashColor: colors.alphaSecondary8,
    scaffoldBackgroundColor: colors.backgroundHigh,
    textTheme: appTextTheme.textTheme.copyWith(
      bodyLarge: appTextTheme.bodyLarge.copyWith(color: colors.secondary),
      labelSmall: appTextTheme.labelSmall.copyWith(color: colors.secondary),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        return colors.backgroundBase;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colors.primary;
        }
        return const Color(0xFF98979B);
      }),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: colors.backgroundHigh.withOpacity(0.9),
      centerTitle: true,
      titleTextStyle: appTextTheme.headlineSmall,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        animationDuration: Duration.zero,
        foregroundColor: WidgetStatePropertyAll(colors.backgroundBase),
        padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16, vertical: 7)),
        alignment: Alignment.centerLeft,
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: colors.backgroundBase,
      titleTextStyle: TextStyle(color: colors.backgroundBase, fontWeight: FontWeight.w600),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colors.primary.withOpacity(0.4);
          }
          return colors.primary;
        }),
        minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 56)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        textStyle: WidgetStatePropertyAll(appTextTheme.headlineSmall),
        foregroundColor: WidgetStatePropertyAll(colors.backgroundMedium),
      ),
    ),
    highlightColor: colors.backgroundBase.withOpacity(0.05),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 56)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        textStyle: WidgetStatePropertyAll(appTextTheme.headlineSmall),
        side: WidgetStatePropertyAll(BorderSide(color: colors.primary)),
        foregroundColor: WidgetStatePropertyAll(colors.backgroundBase),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colors.backgroundBase.withOpacity(0.05),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      errorStyle: appTextTheme.labelMedium.copyWith(color: colors.danger),
      labelStyle: appTextTheme.bodyLarge.copyWith(color: colors.secondary),
      floatingLabelStyle: appTextTheme.titleSmall.copyWith(
        color: colors.secondary,

        ///В Material TextFormField значение fontSize во floating состоянии уменьшается до 75% от изначального.
        ///Чтобы вернуть его к нужным нам значениям по дизайну, нужно умножить его на 1.3333..(3)
        ///https://github.com/flutter/flutter/pull/151835 - вот тут были пояснения на этот счет
        fontSize: appTextTheme.titleSmall.fontSize == null ? null : appTextTheme.titleSmall.fontSize! * 1.34,
      ),
      isDense: true,
    ),
    cardTheme: CardThemeData(
      color: colors.backgroundBase.withOpacity(0.05),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shadowColor: Colors.transparent,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      margin: EdgeInsets.zero,
    ),
  );
}
