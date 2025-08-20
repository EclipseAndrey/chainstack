import 'dart:async';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

part 'cr_bottom_sheet.dart';

///

const Duration _bottomSheetDuration = Duration(milliseconds: 400);

class _ModalBottomSheet<T> extends StatefulWidget {
  final double? closeProgressThreshold;

  final CrModalSheetRoute<T> route;
  final bool expanded;
  final bool bounce;
  final bool enableDrag;
  final AnimationController? secondAnimationController;
  final Curve? animationCurve;

  const _ModalBottomSheet({
    required this.route,
    super.key,
    this.closeProgressThreshold,
    this.secondAnimationController,
    this.bounce = false,
    this.expanded = false,
    this.enableDrag = true,
    this.animationCurve,
  });

  @override
  _ModalBottomSheetState<T> createState() => _ModalBottomSheetState<T>();
}

class _ModalBottomSheetState<T> extends State<_ModalBottomSheet<T>> {
  ScrollController? _scrollController;

  @override
  void initState() {
    widget.route.animation?.addListener(updateController);
    super.initState();
  }

  @override
  void dispose() {
    widget.route.animation?.removeListener(updateController);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    assert(widget.route._animationController != null);
    final scrollController = PrimaryScrollController.maybeOf(context) ?? (_scrollController ??= ScrollController());
    return PrimaryScrollController(
      controller: scrollController,
      child: ModalScrollController(
        controller: scrollController,
        child: Builder(
          builder:
              (context) => AnimatedBuilder(
                animation: widget.route._animationController!,
                builder: (context, final child) {
                  assert(child != null);
                  // Disable the initial animation when accessible navigation is on so
                  // that the semantics are added to the tree at the correct time.
                  return Semantics(
                    scopesRoute: true,
                    namesRoute: true,
                    label: _getRouteLabel(),
                    explicitChildNodes: true,
                    child: ModalBottomSheet(
                      closeProgressThreshold: widget.closeProgressThreshold,
                      expanded: widget.route.expanded,
                      containerBuilder: widget.route.containerBuilder,
                      animationController: widget.route._animationController!,
                      shouldClose:
                          widget.route.popDisposition == RoutePopDisposition.bubble
                              ? null
                              : () async {
                                return widget.route.popDisposition != RoutePopDisposition.doNotPop;
                              },
                      onClosing: () {
                        if (widget.route.isCurrent) {
                          Navigator.of(context).pop();
                        }
                      },
                      child: child!,
                      enableDrag: widget.enableDrag,
                      bounce: widget.bounce,
                      scrollController: scrollController,
                      animationCurve: widget.animationCurve,
                    ),
                  );
                },
                child: widget.route.builder(context),
              ),
        ),
      ),
    );
  }

  void updateController() {
    final animation = widget.route.animation;
    if (animation != null) {
      widget.secondAnimationController?.value = animation.value;
    }
  }

  String _getRouteLabel() {
    final platform = Theme.of(context).platform; //?? defaultTargetPlatform;
    switch (platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return '';
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        if (Localizations.of(context, MaterialLocalizations) != null) {
          return MaterialLocalizations.of(context).dialogLabel;
        } else {
          return const DefaultMaterialLocalizations().dialogLabel;
        }
    }
  }
}

class CrModalSheetRoute<T> extends PageRoute<T> {
  final double? closeProgressThreshold;
  final WidgetWithChildBuilder? containerBuilder;
  final WidgetBuilder builder;
  final bool expanded;
  final bool bounce;
  final Color? modalBarrierColor;
  final bool isDismissible;
  final bool enableDrag;
  final ScrollController? scrollController;
  final Duration duration;

  final AnimationController? secondAnimationController;
  final Curve? animationCurve;

  @override
  final String? barrierLabel;

  @override
  Duration get transitionDuration => duration;

  @override
  bool get barrierDismissible => isDismissible;

  @override
  bool get maintainState => true; // keep in memory when not active (#252)

  @override
  bool get opaque => false; //transparency

  // TODO(Oleg): Colors refactoring, no context, use alhaBlack36
  @override
  Color get barrierColor => modalBarrierColor ?? Colors.black.withValues(alpha: 0.36);

  AnimationController? _animationController;

  CrModalSheetRoute({
    required this.builder,
    required this.expanded,
    this.closeProgressThreshold,
    this.containerBuilder,
    this.scrollController,
    this.barrierLabel,
    this.secondAnimationController,
    this.modalBarrierColor,
    this.isDismissible = true,
    this.enableDrag = true,
    this.bounce = false,
    this.animationCurve,
    Duration? duration,
    super.settings,
  }) : duration = duration ?? _bottomSheetDuration;

  @override
  AnimationController createAnimationController() {
    assert(_animationController == null);
    _animationController = ModalBottomSheet.createAnimationController(
      navigator!.overlay!,
      duration: transitionDuration,
    );
    return _animationController!;
  }

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // By definition, the bottom sheet is aligned to the bottom of the page
    // and isn't exposed to the top padding of the MediaQuery.
    final Widget bottomSheet = MediaQuery.removePadding(
      context: context,
      // removeTop: true,
      child: _ModalBottomSheet<T>(
        closeProgressThreshold: closeProgressThreshold,
        route: this,
        secondAnimationController: secondAnimationController,
        expanded: expanded,
        bounce: bounce,
        enableDrag: enableDrag,
        animationCurve: animationCurve,
      ),
    );
    return bottomSheet;
  }

  @override
  bool canTransitionTo(TransitionRoute<dynamic> nextRoute) => nextRoute is CrModalSheetRoute;

  @override
  bool canTransitionFrom(TransitionRoute<dynamic> previousRoute) =>
      previousRoute is CrModalSheetRoute || previousRoute is PageRoute;

  Widget getPreviousRouteTransition(
    BuildContext context,
    Animation<double> secondAnimation,
    Widget child,
  ) {
    return child;
  }
}
