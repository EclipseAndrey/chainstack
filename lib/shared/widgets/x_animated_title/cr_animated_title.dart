import 'package:chainstack/shared/widgets/x_animated_title/models/title_animation_config.dart';
import 'package:chainstack/shared/widgets/x_app_bar/x_title_app_bar.dart';
import 'package:flutter/material.dart';

class XAnimatedTitle extends StatefulWidget {
  final Widget firstTitle;
  final XTitleAppBar? secondTitle;
  final ScrollController? scrollController;
  final TitleAnimationConfig titleAnimationConfig;

  const XAnimatedTitle({
    required this.scrollController,
    required this.firstTitle,
    this.secondTitle,
    this.titleAnimationConfig = const TitleAnimationConfig(),
    super.key,
  });

  @override
  State<XAnimatedTitle> createState() => _XAnimatedTitleState();
}

class _XAnimatedTitleState extends State<XAnimatedTitle> {
  late final XTitleAppBar secondTitle;
  late final XTitleAppBar firstTitle;

  double coefficient = 0;

  @override
  void initState() {
    super.initState();

    /// Преобразуем первый заголовок в CrTitleAppBar
    if (widget.firstTitle is XTitleAppBar) {
      firstTitle = widget.firstTitle as XTitleAppBar;
    } else {
      firstTitle = XTitleAppBar(title: widget.firstTitle);
    }

    /// Заполняем второй заголовок, если его нет, пустышка
    secondTitle = widget.secondTitle ?? const XTitleAppBar();

    /// Анимация будет работать, если есть второй заголовок
    if (widget.secondTitle != null) {
      widget.scrollController?.addListener(scrollListener);
    }
  }

  @override
  void dispose() {
    if (widget.secondTitle != null) {
      widget.scrollController?.removeListener(scrollListener);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final coefficientOpacity1 = 1 - (coefficient * 3).clamp(0.0, 1.0);
    final offset1 = (coefficient * -3).clamp(-1.0, 0.0);

    final coefficientOpacity2 = (((coefficient - 1 / 3).clamp(0.0, 1.0)) * (1 / (1 / 3))).clamp(0.0, 1.0);
    final offset2 = 1 - ((((coefficient - 1 / 3).clamp(0.0, 1.0)) * (1 / (1 / 3))).clamp(0.0, 1.0));

    final coefficientOpacity3 = (((coefficient - 5 / 9).clamp(0.0, 1.0)) * (2)).clamp(0.0, 1.0);
    final offset3 = 1 - ((((coefficient - 5 / 9).clamp(0.0, 1.0)) * (1 / (1 / 3))).clamp(0.0, 1.0));

    final titleTextStyle = XTitleAppBar.titleTextStyle(context);
    final titleSecondTextStyle = XTitleAppBar.titleSecondTextStyle(context);
    final subtitleTextStyle = XTitleAppBar.subtitleTextStyle(context);

    return SizedBox(
      height: kToolbarHeight,
      width: MediaQuery.sizeOf(context).width - 144,
      child: Stack(
        children: [
          Positioned(
            // top: (kToolbarHeight - 24) / 2,
            child: SizedBox(
              height: kToolbarHeight,
              width: MediaQuery.sizeOf(context).width - 144,
              child: DefaultTextStyle(
                style: titleTextStyle,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: coefficientOpacity1,
                      child: FractionalTranslation(translation: Offset(0, offset1), child: firstTitle),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            // bottom: 10,
            child: SizedBox(
              height: kToolbarHeight,
              width: MediaQuery.sizeOf(context).width - 144,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: coefficientOpacity2,
                    child: DefaultTextStyle(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: titleSecondTextStyle,
                      child: FractionalTranslation(
                        translation: Offset(0, offset2),
                        child: secondTitle.title ?? const SizedBox(),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: coefficientOpacity3,
                    child: DefaultTextStyle(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: subtitleTextStyle,
                      child: FractionalTranslation(
                        translation: Offset(0, offset3),
                        child: secondTitle.subtitle ?? const SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void scrollListener() {
    if ((widget.scrollController?.offset ?? 0.0) < widget.titleAnimationConfig.beginTrigger) {
      if (coefficient != 0.0) {
        setState(() {
          coefficient = 0.0;
        });
      }
    } else if ((widget.scrollController?.offset ?? 0.0) > widget.titleAnimationConfig.endTrigger) {
      if (coefficient != 1.0) {
        setState(() {
          coefficient = 1.0;
        });
      }
    } else {
      setState(() {
        coefficient =
            1 -
            (widget.titleAnimationConfig.endTrigger -
                    (widget.scrollController?.offset ?? 0.0).clamp(
                      widget.titleAnimationConfig.beginTrigger,
                      widget.titleAnimationConfig.endTrigger,
                    )) /
                (widget.titleAnimationConfig.endTrigger - widget.titleAnimationConfig.beginTrigger);
      });
    }
  }
}
