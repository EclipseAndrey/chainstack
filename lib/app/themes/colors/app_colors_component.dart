import 'package:chainstack/app/themes/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_colors_component.tailor.dart';

@TailorMixinComponent()
class XColors extends ThemeExtension<XColors> with _$XColorsTailorMixin {
  @override
  final Color primary;
  @override
  final Color secondary = AppColors.secondary;
  @override
  final Color success = AppColors.success;
  @override
  final Color warning = AppColors.warning;
  @override
  final Color danger = AppColors.danger;
  @override
  final Color link = AppColors.link;
  @override
  final Color intactDark;
  @override
  final Color intactLight;
  @override
  final Color backgroundBase;
  @override
  final Color backgroundCounter;
  @override
  final Color backgroundBaseWave;
  @override
  final Color backgroundHigh;
  @override
  final Color backgroundMedium;
  @override
  final Color backgroundLow;
  @override
  final Color alphaSecondary4 = AppColors.alphaSecondary4;
  @override
  final Color alphaSecondary8 = AppColors.alphaSecondary8;
  @override
  final Color alphaSecondary16 = AppColors.alphaSecondary16;
  @override
  final Color alphaSecondary24 = AppColors.alphaSecondary24;
  @override
  final Color alphaSecondary48 = AppColors.alphaSecondary48;
  @override
  final Color alphaPrimary4 = AppColors.alphaPrimary4;
  @override
  final Color alphaPrimary8 = AppColors.alphaPrimary8;
  @override
  final Color alphaPrimary16 = AppColors.alphaPrimary16;
  @override
  final Color alphaPrimary40 = AppColors.alphaPrimary40;
  @override
  final Color alphaSuccess8 = AppColors.alphaSuccess8;
  @override
  final Color alphaSuccess16 = AppColors.alphaSuccess16;
  @override
  final Color alphaSuccess40 = AppColors.alphaSuccess40;
  @override
  final Color alphaWarning8 = AppColors.alphaWarning8;
  @override
  final Color alphaWarning16 = AppColors.alphaWarning16;
  @override
  final Color alphaWarning24 = AppColors.alphaWarning24;
  @override
  final Color alphaWarning40 = AppColors.alphaWarning40;
  @override
  final Color alphaDanger8 = AppColors.alphaDanger8;
  @override
  final Color alphaDanger16 = AppColors.alphaDanger16;
  @override
  final Color alphaDanger40 = AppColors.alphaDanger40;
  @override
  final Color alphaLink8 = AppColors.alphaLink8;
  @override
  final Color alphaLink16 = AppColors.alphaLink16;
  @override
  final Color alphaLink40 = AppColors.alphaLink40;
  @override
  final Color primary50 = AppColors.primary50;
  @override
  final Color primary100 = AppColors.primary100;
  @override
  final Color primary200 = AppColors.primary200;
  @override
  final Color primary300 = AppColors.primary300;
  @override
  final Color primary400 = AppColors.primary400;
  @override
  final Color primary500 = AppColors.primary500;
  @override
  final Color primary600 = AppColors.primary600;
  @override
  final Color primary700 = AppColors.primary700;
  @override
  final Color primary800 = AppColors.primary800;
  @override
  final Color primary900 = AppColors.primary900;
  @override
  final Color primary1000 = AppColors.primary1000;
  @override
  final Color gray50;
  @override
  final Color gray100;
  @override
  final Color gray200;
  @override
  final Color gray300;
  @override
  final Color gray400;
  @override
  final Color gray500;
  @override
  final Color gray600;
  @override
  final Color gray700;
  @override
  final Color gray800;
  @override
  final Color gray900;
  @override
  final Color gray1000;
  @override
  final Color blue50 = AppColors.blue50;
  @override
  final Color blue100 = AppColors.blue100;
  @override
  final Color blue200 = AppColors.blue200;
  @override
  final Color blue300 = AppColors.blue300;
  @override
  final Color blue400 = AppColors.blue400;
  @override
  final Color blue500 = AppColors.blue500;
  @override
  final Color blue600 = AppColors.blue600;
  @override
  final Color blue700 = AppColors.blue700;
  @override
  final Color blue800 = AppColors.blue800;
  @override
  final Color blue900 = AppColors.blue900;
  @override
  final Color blue1000 = AppColors.blue1000;
  @override
  final Color green50 = AppColors.green50;
  @override
  final Color green100 = AppColors.green100;
  @override
  final Color green200 = AppColors.green200;
  @override
  final Color green300 = AppColors.green300;
  @override
  final Color green400 = AppColors.green400;
  @override
  final Color green500 = AppColors.green500;
  @override
  final Color green600 = AppColors.green600;
  @override
  final Color green700 = AppColors.green700;
  @override
  final Color green800 = AppColors.green800;
  @override
  final Color green900 = AppColors.green900;
  @override
  final Color green1000 = AppColors.green1000;
  @override
  final Color orange50 = AppColors.orange50;
  @override
  final Color orange100 = AppColors.orange100;
  @override
  final Color orange200 = AppColors.orange200;
  @override
  final Color orange300 = AppColors.orange300;
  @override
  final Color orange400 = AppColors.orange400;
  @override
  final Color orange500 = AppColors.orange500;
  @override
  final Color orange600 = AppColors.orange600;
  @override
  final Color orange700 = AppColors.orange700;
  @override
  final Color orange800 = AppColors.orange800;
  @override
  final Color orange900 = AppColors.orange900;
  @override
  final Color orange1000 = AppColors.orange1000;
  @override
  final Color red50 = AppColors.red50;
  @override
  final Color red100 = AppColors.red100;
  @override
  final Color red200 = AppColors.red200;
  @override
  final Color red300 = AppColors.red300;
  @override
  final Color red400 = AppColors.red400;
  @override
  final Color red500 = AppColors.red500;
  @override
  final Color red600 = AppColors.red600;
  @override
  final Color red700 = AppColors.red700;
  @override
  final Color red800 = AppColors.red800;
  @override
  final Color red900 = AppColors.red900;
  @override
  final Color red1000 = AppColors.red1000;
  @override
  final Color purple50 = AppColors.purple50;
  @override
  final Color purple100 = AppColors.purple100;
  @override
  final Color purple200 = AppColors.purple200;
  @override
  final Color purple300 = AppColors.purple300;
  @override
  final Color purple400 = AppColors.purple400;
  @override
  final Color purple500 = AppColors.purple500;
  @override
  final Color purple600 = AppColors.purple600;
  @override
  final Color purple700 = AppColors.purple700;
  @override
  final Color purple800 = AppColors.purple800;
  @override
  final Color purple900 = AppColors.purple900;
  @override
  final Color purple1000 = AppColors.purple1000;

  XColors({
    required this.primary,
    required this.intactDark,
    required this.intactLight,
    required this.backgroundBase,
    required this.backgroundCounter,
    required this.backgroundBaseWave,
    required this.backgroundHigh,
    required this.backgroundMedium,
    required this.backgroundLow,
    required this.gray50,
    required this.gray100,
    required this.gray200,
    required this.gray300,
    required this.gray400,
    required this.gray500,
    required this.gray600,
    required this.gray700,
    required this.gray800,
    required this.gray900,
    required this.gray1000,
  });
}
