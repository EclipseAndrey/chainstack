import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/widgets/x_image/x_svg_icon.dart';
import 'package:flutter/material.dart';

class XModalSmallBackgroundWidget extends StatelessWidget {
  final Color? backgroundColor;
  final WidgetBuilder builder;
  final bool removeContentPadding;
  final bool showCloseButton;

  const XModalSmallBackgroundWidget({
    required this.builder,
    this.backgroundColor,
    this.removeContentPadding = false,
    this.showCloseButton = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + 8, left: 8, right: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(32)),
        child: ColoredBox(
          color: context.colors.backgroundLow,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!removeContentPadding) const SizedBox(height: 16),
              if (showCloseButton)
                Padding(
                  padding: EdgeInsets.only(right: 16, top: removeContentPadding ? 16 : 0),
                  child: GestureDetector(
                    child: const XSvgIcon.circular('assets/icons/close_circle.svg'),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              Padding(
                padding: removeContentPadding
                    ? EdgeInsets.zero
                    : EdgeInsets.only(
                        top: showCloseButton ? 0 : (removeContentPadding ? 32.0 : 16),
                        left: 32,
                        right: 32,
                      ),
                child: Builder(builder: builder),
              ),
              if (!removeContentPadding) const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
