import 'package:chainstack/app/themes/colors/app_colors_component.dart';
import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  double calculateFontSize({required String text, required TextStyle textStyle, required double padding}) {
    /// берем доступное пространство
    final width = MediaQuery.sizeOf(this).width - padding;
    final fontSize = textStyle.fontSize ?? 0;

    /// достаем фактическую ширину текста при рендере
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: textStyle),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    /// проверяем что текст не влазиет в доступную ширину
    if (textPainter.size.width > width) {
      /// получаем множитель что бы уменьшить размер шрифта
      final sizeMultiplier = width / textPainter.size.width;
      final newFontSize = fontSize * sizeMultiplier;
      return newFontSize;
    }

    return fontSize;
  }

  Size get sizeScreen => MediaQuery.sizeOf(this);
  ThemeData get theme => Theme.of(this);
  XColors get colors {
    return theme.colors;
  }

  XTextTheme get text {
    return theme.text;
  }
}
