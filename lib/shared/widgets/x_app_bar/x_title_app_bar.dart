import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/utils/extensions/text_style.dart';
import 'package:flutter/material.dart';

extension TitleExtension on XTitleAppBar {
  bool get isNotEmpty => title != null || subtitle != null;
  bool get isEmpty => title == null && subtitle == null;

  Widget? getTitle(BuildContext context) {
    if (title == null) {
      return null;
    }
    return DefaultTextStyle(
      style: subtitle != null ? XTitleAppBar.titleSecondTextStyle(context) : XTitleAppBar.titleTextStyle(context),
      child: title!,
    );
  }

  Widget? getSubtitle(BuildContext context) {
    if (subtitle == null) {
      return null;
    }
    return DefaultTextStyle(
      style: title != null ? XTitleAppBar.subtitleTextStyle(context) : XTitleAppBar.titleTextStyle(context),
      child: subtitle!,
    );
  }
}

class XTitleAppBar extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;
  const XTitleAppBar({this.title, this.subtitle, super.key});

  static TextStyle titleTextStyle(BuildContext context) => context.text.headline5;
  static TextStyle titleSecondTextStyle(BuildContext context) => context.text.subtitleSecondaryBold;
  static TextStyle subtitleTextStyle(BuildContext context) => context.text.bodyPrimaryRegular.secondary(context);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          DefaultTextStyle(
            maxLines: 1,
            style: subtitle != null ? XTitleAppBar.titleSecondTextStyle(context) : XTitleAppBar.titleTextStyle(context),
            child: title!,
          ),
        if (title != null && subtitle != null) const SizedBox(height: 0),
        if (subtitle != null)
          DefaultTextStyle(
            maxLines: 1,
            style: title != null ? XTitleAppBar.subtitleTextStyle(context) : XTitleAppBar.titleTextStyle(context),
            child: subtitle!,
          ),
      ],
    );
  }
}
