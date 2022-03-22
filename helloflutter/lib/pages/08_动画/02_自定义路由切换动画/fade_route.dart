///
/// Author       : zhongaidong
/// Date         : 2022-03-22 11:16:04
/// Description  : 自定义路由切换动画
///

import 'package:flutter/material.dart';

class FadeRoute extends PageRoute {
  FadeRoute({
    required this.builder,
    this.transitionDuration = const Duration(milliseconds: 300),
    this.opaque = true,
    this.barrierDismissible = false,
    this.barrierColor,
    this.barrierLabel,
    this.maintainState = true,
  });

  final WidgetBuilder builder;

  @override
  final Duration transitionDuration;

  @override
  final bool opaque;

  @override
  final bool barrierDismissible;

  @override
  final Color? barrierColor;

  @override
  final String? barrierLabel;

  @override
  final bool maintainState;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) =>
      builder(context);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    //  return FadeTransition(
    //    opacity: animation,
    //    child: builder(context),
    //  );

    // 在打开新路由时应用动画，而在返回时不使用动画
    // 当前路由被激活，是打开新路由
    if (isActive) {
      return FadeTransition(
        opacity: animation,
        child: builder(context),
      );
    } else {
      // 是返回，则不应用过渡动画
      // return const Padding(padding: EdgeInsets.zero);
      return Container();
    }
  }
}
