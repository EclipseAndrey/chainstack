import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/widgets/x_modal_bottom_sheet/src/cr_bottom_sheet_route.dart';
import 'package:flutter/material.dart';

Future<T?> showXModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color? barrierColor,
  bool bounce = false,
  bool expand = false,
  AnimationController? secondAnimation,
  Curve? animationCurve,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  RouteSettings? settings,
  double? closeProgressThreshold,
  BorderRadius? borderRadius,
  EdgeInsets? padding,
  EdgeInsets? margin,
  bool disableTopPadding = false,
  bool waitForAnimation = false,
  bool showAsCurtain = false,
}) async {
  Widget crDecoratedBuilder(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:
              borderRadius ?? const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        ),
        padding: EdgeInsets.only(bottom: MediaQuery.paddingOf(context).bottom),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 32,
                  height: 4,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: context.colors.alphaDanger8),
                ),
              ],
            ),
            Expanded(child: Builder(builder: builder)),
          ],
        ),
      ),
    );
  }

  backgroundColor ??= showAsCurtain ? Theme.of(context).colors.backgroundLow : Theme.of(context).colors.backgroundHigh;

  final result = await showCustomMaterialModalBottomSheet<T>(
    context: context,
    builder: showAsCurtain
        ? crDecoratedBuilder
        : (context) {
            return Container(
              margin: margin,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius:
                    borderRadius ??
                    const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              ),
              padding: (padding ?? EdgeInsets.zero).copyWith(
                top: disableTopPadding ? null : MediaQuery.paddingOf(context).top,
              ),
              child: Builder(builder: builder),
            );
          },
    backgroundColor: Colors.transparent,
    elevation: elevation,
    shape: shape,
    clipBehavior: clipBehavior,
    barrierColor: barrierColor,
    bounce: bounce,
    expand: expand,
    secondAnimation: secondAnimation,
    animationCurve: animationCurve,
    useRootNavigator: useRootNavigator,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    duration: crModalBottomSheetDuration,
    settings: settings,
    closeProgressThreshold: closeProgressThreshold,
  );

  if (waitForAnimation) {
    await Future.delayed(crModalBottomSheetDuration + const Duration(milliseconds: 50));
  }

  return result;
}

const crModalBottomSheetDuration = Duration(milliseconds: 400);
