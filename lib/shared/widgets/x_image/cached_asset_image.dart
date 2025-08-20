import 'package:chainstack/shared/widgets/shimmer/x_shimmer.dart';
import 'package:flutter/material.dart';

Map<String, ImageProvider> _cachedImages = {};

class CachedAssetImage extends StatefulWidget {
  final String assetName;
  final double? width;
  final double? height;
  final BoxFit? fit;
  const CachedAssetImage(this.assetName, {super.key, this.width, this.height, this.fit});

  @override
  State<CachedAssetImage> createState() => _CachedAssetImageState();
}

class _CachedAssetImageState extends State<CachedAssetImage> {
  late final ImageProvider _imageProvider;
  bool isLoading = true;

  @override
  void initState() {
    _imageProvider = _cachedImages[getKeyProvider()] ??= AssetImage(widget.assetName);
    if (!_cachedImages.containsKey(getKeyProvider())) {
      _cachedImages[getKeyProvider()] = _imageProvider;
      _precacheImage(context);
    } else {
      isLoading = false;
    }
    super.initState();
  }

  String getKeyProvider() {
    return widget.assetName + widget.width.toString() + widget.height.toString() + widget.fit.toString();
  }

  Future<void> _precacheImage(BuildContext context) async {
    await precacheImage(_imageProvider, context);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
      duration: const Duration(milliseconds: 200),
      child: isLoading
          ? XShimmer(
              child: SizedBox(width: widget.width, height: widget.height),
            )
          : Image(
              key: ValueKey(_imageProvider),
              image: _imageProvider,
              width: widget.width,
              height: widget.height,
              fit: widget.fit,
            ),
    );
  }
}
