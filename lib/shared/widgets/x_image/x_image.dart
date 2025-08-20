// ignore_for_file: avoid_positional_boolean_parameters
import 'package:chainstack/shared/widgets/x_image/cached_asset_image.dart';
import 'package:chainstack/shared/widgets/x_image/x_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class XImage {
  static Widget adaptive(
    String path, {
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
    EdgeInsets? margin,
    Color? backgroundColor,
    Widget Function(BuildContext, Widget, bool)? loadingBuilder,
    Widget Function(BuildContext)? errorBuilder,
    Key? key,
  }) {
    if (path.startsWith('http')) {
      if (path.endsWith('.svg')) {
        return svgNetwork(
          path,
          width: width,
          height: height,
          fit: fit,
          loadingBuilder: loadingBuilder,
          errorBuilder: errorBuilder,
          margin: margin,
          backgroundColor: backgroundColor,
          key: key,
        );
      } else {
        return network(
          path,
          width: width,
          height: height,
          fit: fit,
          loadingBuilder: loadingBuilder,
          errorBuilder: errorBuilder,
          key: key,
        );
      }
    } else {
      if (path.endsWith('.svg')) {
        return svgAssets(
          path,
          margin: margin,
          backgroundColor: backgroundColor,
          color: color,
          size: width,
          fit: fit,
          key: key,
        );
      } else {
        return asset(path, width: width, height: height, fit: fit, key: key);
      }
    }
  }

  static Widget asset(String path, {double? width, double? height, BoxFit? fit, Key? key}) =>
      CachedAssetImage(path, width: width, height: height, fit: fit, key: key);

  static Widget network(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    EdgeInsets? margin,
    Widget Function(BuildContext, Widget, bool)? loadingBuilder,
    Widget Function(BuildContext)? errorBuilder,
    bool useMemoryCache = true,
    Key? key,
  }) {
    final img = Image.network(
      url,
      key: key,
      width: width,
      height: height,
      fit: fit,
      // Адаптируем сигнатуру: передаём isLoading = loadingProgress != null
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingBuilder == null) return child;
        final isLoading = loadingProgress != null;
        return loadingBuilder(context, child, isLoading);
      },
      errorBuilder: (context, error, stackTrace) {
        if (errorBuilder != null) return errorBuilder(context);
        // дефолтная заглушка
        return const Icon(Icons.broken_image_outlined);
      },
      // Кеширование:
      // Flutter кеширует в ImageCache. Напрямую отключить нельзя.
      // Можно «пробить» кеш, добавляя query-параметр к URL, если нужно.
    );

    return Padding(padding: margin ?? EdgeInsets.zero, child: img);
  }

  static Widget svgAssets(
    String url, {
    Key? key,
    EdgeInsets? margin,
    Color? backgroundColor,
    Color? color,
    double? size,
    BoxFit? fit,
  }) => XSvgIcon(url, color: color, backgroundColor: backgroundColor, margin: margin, size: size, fit: fit, key: key);

  static Widget svgNetwork(
    String url, {
    Key? key,
    double? width,
    double? height,
    BoxFit? fit,
    EdgeInsets? margin,
    Color? backgroundColor,
    Widget Function(BuildContext, Widget, bool)? loadingBuilder,
    Widget Function(BuildContext)? errorBuilder,
    bool useMemoryCache = true,
  }) {
    final child = SvgPicture.network(
      url,
      key: key,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      // Показываем плейсхолдер на время загрузки.
      placeholderBuilder: (ctx) {
        if (loadingBuilder != null) {
          return loadingBuilder(ctx, const SizedBox.shrink(), true);
        }
        return const SizedBox.shrink();
      },
      // flutter_svg сам кэширует картинки через ImageProvider.
      // Параметра для отключения memory cache нет — игнорируем useMemoryCache.
    );

    return Container(margin: margin ?? EdgeInsets.zero, color: backgroundColor, child: child);
  }
}
