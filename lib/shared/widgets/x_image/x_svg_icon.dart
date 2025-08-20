import 'package:chainstack/app/themes/colors/app_colors_component.dart';
import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XSvgIcon extends StatelessWidget {
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final Color? color;
  final String path;
  final double? size;
  final BoxFit? fit;
  final double? borderRadius;

  const XSvgIcon.circular(
    this.path, {
    super.key,
    this.margin,
    this.backgroundColor,
    this.color,
    this.size,
    this.fit,
    this.borderRadius,
  });

  const XSvgIcon(
    this.path, {
    super.key,
    this.margin,
    this.backgroundColor,
    this.color,
    this.size,
    this.fit,
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colors;

    if (backgroundColor != null) {
      return RepaintBoundary(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: borderRadius != null ? BoxShape.rectangle : BoxShape.circle,
            borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
          ),
          child: Padding(
            padding: margin ?? const EdgeInsets.all(8.0),
            child: _Svg(path, size: size, color: color, fit: fit, theme: theme),
          ),
        ),
      );
    }

    return RepaintBoundary(child: _Svg(path, size: size, color: color, fit: fit, theme: theme));
  }
}

class _Svg extends StatelessWidget {
  final Color? color;
  final String path;
  final double? size;
  final BoxFit? fit;
  final XColors theme;

  const _Svg(this.path, {required this.theme, this.color, this.size, this.fit});

  ColorFilter? _getColorFilter(Color? color, BlendMode colorBlendMode) {
    return color == null ? null : ColorFilter.mode(color, colorBlendMode);
  }

  @override
  Widget build(BuildContext context) {
    final loader = CustomSvgAssetLoader(path);
    return FutureBuilder(
      future: loader.loadBytes(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          /// Заглушка для иконок при смене темы
          /// Временное решение
          /// Переделать на анимацию если нужно будет когда нибудь в следующей жизни
          return SizedBox(width: size, height: size);
        }
        if (snapshot.connectionState == ConnectionState.done) {
          final colorFilter = switch (_currentColorEntry[path]) {
            true => _getColorFilter(color, BlendMode.srcIn),
            false => _getColorFilter(color, BlendMode.srcIn),
            null => const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          };

          return SvgPicture(loader, colorFilter: colorFilter, width: size, height: size, fit: fit ?? BoxFit.contain);
        }

        return const SizedBox.shrink();
      },
    );
  }
}

class CustomSvgAssetLoader extends SvgAssetLoader {
  const CustomSvgAssetLoader(super.assetName);

  AssetBundle _resolveBundle(BuildContext? context) {
    if (assetBundle != null) {
      return assetBundle!;
    }
    if (context != null) {
      return DefaultAssetBundle.of(context);
    }
    return rootBundle;
  }

  @override
  SvgCacheKey cacheKey(BuildContext? context) {
    final themeBgBase = context?.colors.backgroundBase;

    return SvgCacheKey(
      theme: SvgTheme(currentColor: themeBgBase ?? const Color(0xFF000000)),
      colorMapper: colorMapper,
      keyData: _AssetByteLoaderCacheKey(assetName, packageName, _resolveBundle(context)),
    );
  }

  _BgColorInfo _colorsInfo(BuildContext? context) {
    Color bgBase;
    Color bgInvertBase;

    if (context == null) {
      bgBase = Colors.black;
      bgInvertBase = Colors.white;
    } else {
      bgBase = Theme.of(context).brightness == Brightness.light ? Colors.black : context.colors.backgroundBase;
      bgInvertBase = context.colors.backgroundLow;
    }

    return _BgColorInfo(bg: bgBase, bgInvert: bgInvertBase);
  }

  @override
  Future<ByteData?> prepareMessage(BuildContext? context) async {
    final colorsInfo = _colorsInfo(context);

    final rawStr = await _resolveBundle(
      context,
    ).loadString(packageName == null ? assetName : 'packages/$packageName/$assetName');
    final contains = _currentColorEntry[assetName] ?? rawStr.contains('currentColor');
    _currentColorEntry[assetName] = contains;

    final bg =
        '#${colorsInfo.bg.red.toRadixString(16)}${colorsInfo.bg.green.toRadixString(16)}${colorsInfo.bg.blue.toRadixString(16)}';
    final bgInvert =
        '#${colorsInfo.bgInvert.red.toRadixString(16)}${colorsInfo.bgInvert.green.toRadixString(16)}${colorsInfo.bgInvert.blue.toRadixString(16)}';

    final str = contains ? rawStr.replaceAll('currentColorInvert', bgInvert).replaceAll('currentColor', bg) : rawStr;

    return ByteData.sublistView(Uint8List.fromList(str.codeUnits));
  }
}

final _currentColorEntry = <String, bool>{};

@immutable
class _AssetByteLoaderCacheKey {
  const _AssetByteLoaderCacheKey(this.assetName, this.packageName, this.assetBundle);

  final String assetName;
  final String? packageName;

  final AssetBundle assetBundle;

  @override
  int get hashCode => Object.hash(assetName, packageName, assetBundle);

  @override
  bool operator ==(Object other) {
    return other is _AssetByteLoaderCacheKey &&
        other.assetName == assetName &&
        other.assetBundle == assetBundle &&
        other.packageName == packageName;
  }

  @override
  String toString() => '_AssetByteLoaderCacheKey(${packageName != null ? '$packageName/' : ''}$assetName)';
}

class _BgColorInfo {
  _BgColorInfo({required this.bg, required this.bgInvert});
  final Color bg;
  final Color bgInvert;
}
