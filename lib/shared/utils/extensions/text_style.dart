import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  TextStyle base(BuildContext context) => copyWith(color: context.colors.backgroundBase);
  TextStyle secondary(BuildContext context) => copyWith(color: context.colors.secondary);
  TextStyle danger(BuildContext context) => copyWith(color: context.colors.danger);
  TextStyle warning(BuildContext context) => copyWith(color: context.colors.warning);
  TextStyle counter(BuildContext context) => copyWith(color: context.colors.backgroundCounter);
  TextStyle link(BuildContext context) => copyWith(color: context.colors.link);
  TextStyle primary(BuildContext context) => copyWith(color: context.colors.primary);
  TextStyle success(BuildContext context) => copyWith(color: context.colors.success);
  TextStyle intactDark(BuildContext context) => copyWith(color: context.colors.intactDark);
  TextStyle backgroundLow(BuildContext context) => copyWith(color: context.colors.backgroundLow);
}
