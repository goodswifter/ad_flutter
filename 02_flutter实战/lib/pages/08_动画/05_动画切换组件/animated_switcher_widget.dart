///
/// Author       : zhongaidong
/// Date         : 2022-03-22 21:56:12
/// Description  :
///

import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatelessWidget {
  const AnimatedSwitcherWidget({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        var tween = Tween<Offset>(
          begin: const Offset(1, 0),
          end: const Offset(0, 0),
        );
        return MySlideTransition(
          position: tween.animate(animation),
          child: child,
        );
        // 新 child 确实从屏幕右侧平移进入了，但旧child却会从屏幕右侧（而不是左侧）退出
        // return SlideTransition(
        //   child: child,
        //   position: tween.animate(animation),
        // );
      },
      child: child,
    );
  }
}

class MySlideTransition extends AnimatedWidget {
  const MySlideTransition({
    Key? key,
    required Animation<Offset> position,
    this.transformHitTests = true,
    required this.child,
  }) : super(key: key, listenable: position);

  final bool transformHitTests;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final position = listenable as Animation<Offset>;
    Offset offset = position.value;
    if (position.status == AnimationStatus.reverse) {
      offset = Offset(-offset.dx, offset.dy);
    }
    return FractionalTranslation(
      translation: offset,
      transformHitTests: transformHitTests,
      child: child,
    );
  }
}
