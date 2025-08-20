import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/widgets/x_modal_bottom_sheet/physics/modal_scroll_physics.dart';
import 'package:chainstack/shared/widgets/x_modal_bottom_sheet/widgets/background/x_modal_background.dart';
import 'package:chainstack/shared/widgets/x_modal_bottom_sheet/widgets/background/x_modal_small_background.dart';
import 'package:chainstack/shared/widgets/x_modal_bottom_sheet/x_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

class XModal {
  final WidgetBuilder builder;
  final Color? backgroundColor;
  final bool isDismissible;
  final bool enableDrag;
  final bool? waitForAnimation;
  final bool disableTopPadding;
  final bool expand;
  final Color? barrierColor;

  const XModal({
    required this.builder,
    this.isDismissible = true,
    this.enableDrag = true,
    this.waitForAnimation = true,
    this.backgroundColor,
    this.disableTopPadding = false,
    this.expand = false,
    this.barrierColor,
  });

  factory XModal.fullScreen({required WidgetBuilder builder, bool? waitForAnimation}) {
    return XModal(
      disableTopPadding: true,
      builder: builder,
      isDismissible: false,
      enableDrag: false,
      expand: true,
      waitForAnimation: waitForAnimation,
    );
  }

  factory XModal.sheet({required WidgetBuilder builder, bool? waitForAnimation}) {
    return XModal(
      backgroundColor: Colors.transparent,
      waitForAnimation: waitForAnimation,
      builder: (context) {
        return XModalBackgroundWidget(builder: builder);
      },
    );
  }

  factory XModal.boxes({required List<Widget> boxes, List<Widget>? buttons, bool? waitForAnimation}) {
    return XModal.sheet(
      waitForAnimation: waitForAnimation,
      builder: (context) {
        return XModalBackgroundWidget(
          backgroundColor: context.colors.backgroundHigh,
          builder: (context) {
            return Scaffold(
              extendBody: true,
              backgroundColor: Colors.transparent,
              body: ListView(
                padding: EdgeInsets.zero,
                physics: const ModalScrollPhysics(),
                children: boxes..add(SizedBox(height: MediaQuery.paddingOf(context).bottom)),
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Column(mainAxisSize: MainAxisSize.min, children: buttons ?? []),
              ),
            );
          },
        );
      },
    );
  }

  factory XModal.small({
    required WidgetBuilder builder,
    bool? waitForAnimation,
    bool removeContentPadding = false,
    bool showCloseButton = false,
  }) {
    return XModal(
      barrierColor: Colors.black.withValues(alpha: 0.6),
      backgroundColor: Colors.transparent,
      waitForAnimation: waitForAnimation,
      builder: (context) => XModalSmallBackgroundWidget(
        removeContentPadding: removeContentPadding,
        builder: builder,
        showCloseButton: showCloseButton,
      ),
    );
  }

  Future<T?> show<T>(BuildContext context, {Widget Function(BuildContext, Widget child)? builder}) async {
    return showXModalBottomSheet(
      context: context,
      disableTopPadding: disableTopPadding,
      enableDrag: enableDrag,
      backgroundColor: backgroundColor,
      isDismissible: isDismissible,
      waitForAnimation: waitForAnimation ?? true,
      expand: expand,
      barrierColor: barrierColor,
      builder: builder != null ? (context) => builder(context, Builder(builder: this.builder)) : this.builder,
    );
  }
}
