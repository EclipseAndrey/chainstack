import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:flutter/material.dart';

class XInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final Color? splashColor;
  final InteractiveInkFeatureFactory? splashFactory;
  final WidgetStateProperty<Color?>? overlayColor;

  const XInkWell({
    required this.child,
    this.onTap,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.splashColor,
    super.key,
    this.splashFactory,
    this.overlayColor,
  });

  const XInkWell.noEffect({required this.child, this.onTap, super.key})
    : splashFactory = NoSplash.splashFactory,
      borderRadius = null,
      splashColor = null,
      overlayColor = const WidgetStatePropertyAll(Colors.transparent);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: splashColor ?? Theme.of(context).colors.alphaSecondary16,
        overlayColor: overlayColor,
        splashFactory: InkSplash.splashFactory,
        onTap: onTap,
        borderRadius: borderRadius,
        child: child,
      ),
    );
  }
}
