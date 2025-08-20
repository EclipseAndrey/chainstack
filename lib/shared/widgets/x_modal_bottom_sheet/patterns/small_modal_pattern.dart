import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/utils/extensions/text_style.dart';
import 'package:chainstack/shared/widgets/x_image/x_svg_icon.dart';
import 'package:flutter/material.dart';

class SmallModalPattern extends StatelessWidget {
  final String? iconPath;
  final String title;
  final String description;
  final List<Widget> Function(BuildContext context) getButtons;
  final Widget? icon;

  const SmallModalPattern({
    required this.title,
    required this.description,
    required this.getButtons,
    this.iconPath,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (icon != null) icon!,
        if (iconPath != null)
          XSvgIcon.circular(
            iconPath!,
            size: 32,
            margin: const EdgeInsets.all(12),
            backgroundColor: context.colors.alphaSecondary24,
          ),
        const SizedBox(height: 24),
        Text(title, style: Theme.of(context).text.headline2),
        const SizedBox(height: 16),
        Text(description, style: context.text.subtitleSecondaryRegular.secondary(context)),
        const SizedBox(height: 24),
        ...getButtons(context),
      ],
    );
  }
}
