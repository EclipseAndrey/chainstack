import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/utils/haptik_feedback/haptic_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class BaseButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final bool isLoading;
  final EdgeInsets? padding;

  const BaseButton({required this.child, this.onPressed, this.isLoading = false, this.padding, super.key});

  @override
  Widget build(BuildContext context) {
    final size = Size(double.maxFinite, 40);
    final theme = Theme.of(context);
    return Padding(
      padding: padding ?? theme.options.buttonMargin,
      child: ElevatedButton(
        onPressed: isLoading
            ? null
            : () {
                GetIt.I<IHapticService>().lightImpact();
                onPressed?.call();
              },
        style: ElevatedButton.styleFrom(
          foregroundColor: theme.colors.intactDark,
          animationDuration: Duration.zero,
          minimumSize: size,
          maximumSize: size,
          textStyle: context.text.subtitleSecondaryBold,
          overlayColor: theme.colors.primary400,
          splashFactory: InkRipple.splashFactory,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: isLoading
            ? CircularProgressIndicator()
            : DefaultTextStyle(style: context.text.subtitleSecondaryBold, child: child),
      ),
    );
  }
}
