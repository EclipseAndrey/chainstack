import 'dart:io';

import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/models/toast_data.dart';
import 'package:chainstack/shared/icons/x_icons.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/widgets/buttons/x_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oktoast/oktoast.dart';

ToastFuture showXToastWidget(
  Toast toast, {
  required BuildContext context,
  Duration duration = const Duration(milliseconds: 5000),
  VoidCallback? onDismiss,
}) {
  // final addBottomPadding = rootRoutes.contains(GetIt.I.get<RedirectNotifier>().routesStack.lastOrNull);
  // @todo add bottom padding
  final keyboardIsHidden = MediaQuery.viewInsetsOf(context).bottom == 0;
  Widget wrapper = toast;
  // if (addBottomPadding) {
  //   wrapper = Padding(
  //     padding: const EdgeInsets.only(bottom: 35),
  //     child: wrapper,
  //   );
  // }

  if (keyboardIsHidden) {
    wrapper = XSafeArea(child: wrapper);
  }

  return showToastWidget(
    wrapper,
    duration: duration,
    onDismiss: onDismiss,
    position: ToastPosition.bottom,
    handleTouch: true,
  );
}

class Toast extends StatelessWidget {
  final String title;
  final String? description;
  final Widget icon;

  const Toast({required this.title, required this.icon, this.description, super.key});

  factory Toast.info(String title, {String? description}) =>
      Toast.fromToastData(ToastData(title: title, type: ToastType.info, description: description));

  factory Toast.error(String title, {String? description}) =>
      Toast.fromToastData(ToastData(title: title, type: ToastType.error, description: description));

  factory Toast.fromToastData(ToastData toastData) {
    final Widget icon;
    switch (toastData.type) {
      case ToastType.success:
        icon = const Icon(XIcons.accept, color: Colors.green, size: 24);
        // icon = SvgPicture.asset('assets/icons/info.svg', width: 24);
        break;

      case ToastType.info:
        icon = const Icon(XIcons.info, color: Colors.orange, size: 24);

        // icon = SvgPicture.asset('assets/icons/info.svg', width: 24);
        break;

      case ToastType.error:
        icon = const Icon(XIcons.info, color: Colors.red, size: 24);
        break;

      case ToastType.infoBlue:
        icon = const Icon(XIcons.info, color: Colors.blue, size: 24);
        break;
    }

    return Toast(title: toastData.title, description: toastData.description, icon: icon);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Material(
        elevation: 32,
        color: context.theme.colors.backgroundHigh,
        borderRadius: BorderRadius.circular(16),
        child: Row(
          children: [
            Padding(padding: const EdgeInsets.all(12), child: icon),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, textAlign: TextAlign.start, style: context.text.bodyPrimaryMedium),
                    if (description != null) Text(description!, style: context.text.bodySecondaryRegular),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: XInkWell(
                borderRadius: BorderRadius.circular(100),
                child: const Padding(padding: EdgeInsets.all(12), child: Icon(XIcons.chevron_down_med, size: 14)),
                onTap: () {
                  dismissAllToast(showAnim: true);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class XSafeArea extends StatelessWidget {
  final Widget? child;

  const XSafeArea({this.child, super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        // padding: EdgeInsets.only(bottom: Theme.of(context).options.iosBottomSafeAreaHeight),
        child: child,
      );
    }

    return SafeArea(child: child ?? const SizedBox.shrink());
  }
}
