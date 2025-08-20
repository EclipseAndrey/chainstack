import 'dart:ui';

import 'package:chainstack/app/themes/models/x_theme.dart';
import 'package:chainstack/shared/widgets/x_animated_title/cr_animated_title.dart';
import 'package:chainstack/shared/widgets/x_animated_title/models/title_animation_config.dart';
import 'package:chainstack/shared/widgets/x_app_bar/x_title_app_bar.dart';
import 'package:chainstack/shared/widgets/x_image/x_svg_icon.dart';
import 'package:flutter/material.dart';

/// Пример использования [XAppBar]
///
/// - Без заголовков
/// ```dart
/// CrAppBar()
/// ```
///
/// - Только title
/// ```dart
/// CrAppBar(
///    title: Text('official_channels'.tr()),
/// ),
/// ```
///
/// - Title и Subtitle
/// ```dart
/// CrAppBar(
///   title: CrTitleAppBar(
///       title: Text('title'.tr()),
///       subtitle: Text('subtitle'.tr()),
///    ),
/// ),
/// ```
///
///
/// - Анимированный заголовок
/// ```dart
/// CrAppBar(
///    title: CrTitleAppBar(               // Будет первым заголовком
///       title: Text('title'.tr()),
///       subtitle: Text('subtitle'.tr()),
///    ),
///    secondTitle: CrTitleAppBar(         // Будет вторым заголовком
///       title: Text('title'.tr()),
///       subtitle: Text('subtitle'.tr()),
///    ),
///     scrollController: _scrollController, // Для анимации
/// )
/// ```
///

class XAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final XTitleAppBar? secondTitle;
  final bool allowBackButton;
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? flexibleSpace;
  final Color? backgroundColor;
  final double? elevation;
  final bool automaticallyImplyLeading;
  final TitleAnimationConfig titleAnimationConfig;
  final bool disableBlur;
  final bool centerTitle;
  final double? leadingWidth;
  final double? titleSpacing;

  /// если [scrollController] будет передан, фон будет блюрится
  /// начало блюра можно задать параметром [beginBlur]
  final ScrollController? scrollController;
  final double beginBlur;

  /// [isSliver] - AppBar / SliverAppBar
  final bool isSliver;

  @override
  Size get preferredSize => preferredSizeAppBar;

  static Size get preferredSizeAppBar => const Size.fromHeight(kToolbarHeight);

  const XAppBar({
    this.title,
    this.secondTitle,
    this.allowBackButton = true,
    super.key,
    this.actions,
    this.leading,
    this.flexibleSpace,
    this.backgroundColor,
    this.elevation,
    this.scrollController,
    this.isSliver = false,
    this.beginBlur = 48,
    this.automaticallyImplyLeading = false,
    this.titleAnimationConfig = const TitleAnimationConfig(),
    this.disableBlur = false,
    this.leadingWidth,
    this.centerTitle = true,
    this.titleSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      leadingWidth: leadingWidth,
      backgroundColor: backgroundColor,
      flexibleSpace: scrollController != null && !disableBlur
          ? _CrAnimatedFlexibleSpace(beginBlur: beginBlur, scrollController: scrollController!)
          : flexibleSpace,
      title: title is XAnimatedTitle
          ? title
          : XAnimatedTitle(
              scrollController: scrollController,
              firstTitle: title ?? const SizedBox(),
              secondTitle: secondTitle,
              titleAnimationConfig: titleAnimationConfig,
            ),
      elevation: elevation,
      automaticallyImplyLeading: automaticallyImplyLeading,
      scrolledUnderElevation: 0,
      leading:
          leading ??
          (allowBackButton
              ? IconButton(
                  key: const ValueKey('backButton'),
                  icon: Icon(Icons.keyboard_arrow_left, size: 24, color: Theme.of(context).colors.backgroundBase),
                  onPressed: () => Navigator.of(context).pop(),
                )
              : null),
      actions: actions,
    );
  }
}

class _CrAnimatedFlexibleSpace extends StatefulWidget {
  final ScrollController scrollController;
  final double beginBlur;

  const _CrAnimatedFlexibleSpace({required this.scrollController, required this.beginBlur});

  @override
  State<_CrAnimatedFlexibleSpace> createState() => _CrAnimatedFlexibleSpaceState();
}

class _CrAnimatedFlexibleSpaceState extends State<_CrAnimatedFlexibleSpace> {
  static const double blurSigma = 40.0;
  bool blurIsDisabled = true;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
    if (!blurIsDisabled) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        scrollListener();
      });
    }
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: blurIsDisabled
          ? const SizedBox()
          : ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma, tileMode: TileMode.mirror),
                child: const SizedBox.expand(),
              ),
            ),
    );
  }

  void scrollListener() {
    if (widget.scrollController.offset > widget.beginBlur) {
      if (blurIsDisabled) {
        setState(() {
          blurIsDisabled = !blurIsDisabled;
        });
      }
    } else {
      if (!blurIsDisabled) {
        setState(() {
          blurIsDisabled = !blurIsDisabled;
        });
      }
    }
  }
}
