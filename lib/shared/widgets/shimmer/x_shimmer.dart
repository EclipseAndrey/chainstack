import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class XShimmer extends StatelessWidget {
  final Size? size;
  final BorderRadius borderRadius;
  final Widget child;
  final bool enabled;

  const XShimmer({
    required this.child,
    this.size,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.enabled = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (!enabled) {
      return child;
    }

    return ClipRRect(
      borderRadius: borderRadius,
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colors.alphaSecondary8,
        highlightColor: Theme.of(context).colors.alphaPrimary8,
        child: ColoredBox(
          color: Theme.of(context).colors.backgroundCounter,
          child: size != null ? SizedBox(width: size!.width, height: size!.height) : child,
        ),
      ),
    );
  }
}
