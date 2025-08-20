import 'dart:ui';

import 'package:chainstack/app/themes/colors/app_colors_component.dart';

class AppColors {
  // Брендовый синий (Chainstack-like)
  static const Color lightPrimary = Color(0xFF0B6CFF);
  static const Color darkPrimary = Color(0xFF0B6CFF);

  // Акценты/состояния
  static const Color secondary = Color(0xFF8A93A6); // холодный серо-синий
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFFFC107);
  static const Color danger = Color(0xFFEF4444);
  static const Color link = Color(0xFF0B6CFF);

  static const Color lightIntactDark = Color(0xFF0D0D0D);
  static const Color darkIntactDark = Color(0xFF100D11);
  static const Color lightIntactLight = Color(0xFFFFFFFF);
  static const Color darkIntactLight = Color(0xFFFFFFFF);
  static const Color backgroundDarkBase = Color(0xFFFFFFFF);
  static const Color backgroundDarkCounter = Color(0xFFFFFFFF);
  static const Color backgroundDarkBaseWave = Color(0xFF100D11);
  static const Color backgroundDarkHigh = Color(0xFF0D0D0D);
  static const Color backgroundDarkMedium = Color(0xFF1A1A1A);
  static const Color backgroundDarkLow = Color(0xFF262626);
  static const Color backgroundLightBase = Color(0xFF0D0D0D);
  static const Color backgroundLightCounter = Color(0xFF0D0D0D);
  static const Color backgroundLightBaseWave = Color(0xFFFFFFFF);
  static const Color backgroundLightHigh = Color(0xFFF2F2F2);
  static const Color backgroundLightMedium = Color(0xFFFFFFFF);
  static const Color backgroundLightLow = Color(0xFFFFFFFF);

  // Альфы (производные от brand/secondary/состояний)
  static Color alphaSecondary4 = const Color(0xFF8A93A6).withValues(alpha: 0.04);
  static Color alphaSecondary8 = const Color(0xFF8A93A6).withValues(alpha: 0.08);
  static Color alphaSecondary16 = const Color(0xFF8A93A6).withValues(alpha: 0.16);
  static Color alphaSecondary24 = const Color(0xFF8A93A6).withValues(alpha: 0.24);
  static Color alphaSecondary48 = const Color(0xFF8A93A6).withValues(alpha: 0.48);

  static Color alphaPrimary4 = const Color(0xFF0B6CFF).withValues(alpha: 0.04);
  static Color alphaPrimary8 = const Color(0xFF0B6CFF).withValues(alpha: 0.08);
  static Color alphaPrimary16 = const Color(0xFF0B6CFF).withValues(alpha: 0.16);
  static Color alphaPrimary40 = const Color(0xFF0B6CFF).withValues(alpha: 0.40);

  static Color alphaSuccess8 = const Color(0xFF22C55E).withValues(alpha: 0.08);
  static Color alphaSuccess16 = const Color(0xFF22C55E).withValues(alpha: 0.16);
  static Color alphaSuccess40 = const Color(0xFF22C55E).withValues(alpha: 0.40);

  static Color alphaWarning8 = const Color(0xFFFFC107).withValues(alpha: 0.08);
  static Color alphaWarning16 = const Color(0xFFFFC107).withValues(alpha: 0.16);
  static Color alphaWarning24 = const Color(0xFFFFC107).withValues(alpha: 0.24);
  static Color alphaWarning40 = const Color(0xFFFFC107).withValues(alpha: 0.40);

  static Color alphaDanger8 = const Color(0xFFEF4444).withValues(alpha: 0.08);
  static Color alphaDanger16 = const Color(0xFFEF4444).withValues(alpha: 0.16);
  static Color alphaDanger40 = const Color(0xFFEF4444).withValues(alpha: 0.40);

  static Color alphaLink8 = const Color(0xFF0B6CFF).withValues(alpha: 0.08);
  static Color alphaLink16 = const Color(0xFF0B6CFF).withValues(alpha: 0.16);
  static Color alphaLink40 = const Color(0xFF0B6CFF).withValues(alpha: 0.40);

  // Brand scale (светлые → тёмные)
  static const Color primary50 = Color(0xFFF2F7FF);
  static const Color primary100 = Color(0xFFE3EEFF);
  static const Color primary200 = Color(0xFFC8DCFF);
  static const Color primary300 = Color(0xFFA3C2FF);
  static const Color primary400 = Color(0xFF5A94FF);
  static const Color primary500 = Color(0xFF0B6CFF); // базовый
  static const Color primary600 = Color(0xFF085BDB);
  static const Color primary700 = Color(0xFF084AB3);
  static const Color primary800 = Color(0xFF0A3C8E);
  static const Color primary900 = Color(0xFF0A2E69);
  static const Color primary1000 = Color(0xFF081E43);

  // Нейтрали «light» (используются на светлой теме для текста/бордеров)
  static const Color grayLight50 = Color(0xFF0F172A);
  static const Color grayLight100 = Color(0xFF1E293B);
  static const Color grayLight200 = Color(0xFF334155);
  static const Color grayLight300 = Color(0xFF475569);
  static const Color grayLight400 = Color(0xFF64748B);
  static const Color grayLight500 = Color(0xFF7C8AA3);
  static const Color grayLight600 = Color(0xFF94A3B8);
  static const Color grayLight700 = Color(0xFFAAB7C6);
  static const Color grayLight800 = Color(0xFFC8D1DA);
  static const Color grayLight900 = Color(0xFFE2E8F0);
  static const Color grayLight1000 = Color(0xFFF1F5F9);

  // Нейтрали «dark» (для тёмной темы — инверсия контраста)
  static const Color grayDark50 = Color(0xFFF1F5F9);
  static const Color grayDark100 = Color(0xFFE2E8F0);
  static const Color grayDark200 = Color(0xFFC8D1DA);
  static const Color grayDark300 = Color(0xFFAAB7C6);
  static const Color grayDark400 = Color(0xFF94A3B8);
  static const Color grayDark500 = Color(0xFF7C8AA3);
  static const Color grayDark600 = Color(0xFF64748B);
  static const Color grayDark700 = Color(0xFF475569);
  static const Color grayDark800 = Color(0xFF334155);
  static const Color grayDark900 = Color(0xFF1E293B);
  static const Color grayDark1000 = Color(0xFF0F172A);

  // Доп. палитры
  static const Color blue50 = Color(0xFFF2F7FF);
  static const Color blue100 = Color(0xFFE3EEFF);
  static const Color blue200 = Color(0xFFC8DCFF);
  static const Color blue300 = Color(0xFFA3C2FF);
  static const Color blue400 = Color(0xFF5A94FF);
  static const Color blue500 = Color(0xFF0B6CFF);
  static const Color blue600 = Color(0xFF085BDB);
  static const Color blue700 = Color(0xFF084AB3);
  static const Color blue800 = Color(0xFF0A3C8E);
  static const Color blue900 = Color(0xFF0A2E69);
  static const Color blue1000 = Color(0xFF081E43);

  static const Color green50 = Color(0xFFF0FDF5);
  static const Color green100 = Color(0xFFDCFCE8);
  static const Color green200 = Color(0xFFBBF7D1);
  static const Color green300 = Color(0xFF86EFAD);
  static const Color green400 = Color(0xFF4ADE80);
  static const Color green500 = Color(0xFF22C55E);
  static const Color green600 = Color(0xFF16A34A);
  static const Color green700 = Color(0xFF15803C);
  static const Color green800 = Color(0xFF166533);
  static const Color green900 = Color(0xFF14532B);
  static const Color green1000 = Color(0xFF052E14);

  static const Color orange50 = Color(0xFFFFF4ED);
  static const Color orange100 = Color(0xFFFFE6D5);
  static const Color orange200 = Color(0xFFFECCAA);
  static const Color orange300 = Color(0xFFFDAC74);
  static const Color orange400 = Color(0xFFFB8A3C);
  static const Color orange500 = Color(0xFFF97316);
  static const Color orange600 = Color(0xFFEA670C);
  static const Color orange700 = Color(0xFFC2570C);
  static const Color orange800 = Color(0xFF9A4A12);
  static const Color orange900 = Color(0xFF7C3D12);
  static const Color orange1000 = Color(0xFF432007);

  static const Color red50 = Color(0xFFFEF2F2);
  static const Color red100 = Color(0xFFFEE2E2);
  static const Color red200 = Color(0xFFFECACA);
  static const Color red300 = Color(0xFFFCA5A5);
  static const Color red400 = Color(0xFFF87171);
  static const Color red500 = Color(0xFFEF4444);
  static const Color red600 = Color(0xFFDC2626);
  static const Color red700 = Color(0xFFB91C1C);
  static const Color red800 = Color(0xFF991B1B);
  static const Color red900 = Color(0xFF7F1D1D);
  static const Color red1000 = Color(0xFF450A0A);

  static const Color purple50 = Color(0xFFF3F3FF);
  static const Color purple100 = Color(0xFFEAEAFD);
  static const Color purple200 = Color(0xFFD9D7FD);
  static const Color purple300 = Color(0xFFBDB8FA);
  static const Color purple400 = Color(0xFF9184F5);
  static const Color purple500 = Color(0xFF7A62F0);
  static const Color purple600 = Color(0xFF6741E6);
  static const Color purple700 = Color(0xFF582FD2);
  static const Color purple800 = Color(0xFF4927B0);
  static const Color purple900 = Color(0xFF3E2191);
  static const Color purple1000 = Color(0xFF241362);
}

// Маппинг в XColors
final xDarkColors = XColors(
  primary: AppColors.darkPrimary,
  intactDark: AppColors.darkIntactDark,
  intactLight: AppColors.darkIntactLight,
  backgroundBase: AppColors.backgroundDarkBase,
  backgroundCounter: AppColors.backgroundDarkCounter,
  backgroundBaseWave: AppColors.backgroundDarkBaseWave,
  backgroundHigh: AppColors.backgroundDarkHigh,
  backgroundMedium: AppColors.backgroundDarkMedium,
  backgroundLow: AppColors.backgroundDarkLow,
  gray50: AppColors.grayDark50,
  gray100: AppColors.grayDark100,
  gray200: AppColors.grayDark200,
  gray300: AppColors.grayDark300,
  gray400: AppColors.grayDark400,
  gray500: AppColors.grayDark500,
  gray600: AppColors.grayDark600,
  gray700: AppColors.grayDark700,
  gray800: AppColors.grayDark800,
  gray900: AppColors.grayDark900,
  gray1000: AppColors.grayDark1000,
);

final xLightColors = XColors(
  primary: AppColors.lightPrimary,
  intactDark: AppColors.lightIntactDark,
  intactLight: AppColors.lightIntactLight,
  backgroundBase: AppColors.backgroundLightBase,
  backgroundCounter: AppColors.backgroundLightCounter,
  backgroundBaseWave: AppColors.backgroundLightBaseWave,
  backgroundHigh: AppColors.backgroundLightHigh,
  backgroundMedium: AppColors.backgroundLightMedium,
  backgroundLow: AppColors.backgroundLightLow,
  gray50: AppColors.grayLight50,
  gray100: AppColors.grayLight100,
  gray200: AppColors.grayLight200,
  gray300: AppColors.grayLight300,
  gray400: AppColors.grayLight400,
  gray500: AppColors.grayLight500,
  gray600: AppColors.grayLight600,
  gray700: AppColors.grayLight700,
  gray800: AppColors.grayLight800,
  gray900: AppColors.grayLight900,
  gray1000: AppColors.grayLight1000,
);
