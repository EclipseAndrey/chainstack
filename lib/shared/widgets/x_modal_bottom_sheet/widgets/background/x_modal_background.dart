import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:flutter/material.dart';

class XModalBackgroundWidget extends StatelessWidget {
  final Color? backgroundColor;
  final WidgetBuilder builder;
  const XModalBackgroundWidget({required this.builder, this.backgroundColor, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              color: backgroundColor ?? context.colors.backgroundMedium,
            ),
            child: Builder(builder: builder),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Align(
                  child: Container(
                    height: 4,
                    width: 32,
                    decoration: BoxDecoration(
                      color: context.colors.alphaSecondary8,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
