///
/// Author       : zhongaidong
/// Date         : 2022-03-22 20:33:29
/// Description  : 交织动画实现
///
/// 1. 开始时高度从0增长到300像素，同时颜色由绿色渐变为红色；这个过程占据整个动画时间的60%。
/// 2. 高度增长到300后，开始沿X轴向右平移100像素；这个过程占用整个动画时间的40%。

import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  StaggerAnimation({
    Key? key,
    required this.controller,
  }) : super(key: key) {
    // 高度动画
    height = Tween<double>(
      begin: .0,
      end: 300,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: const Interval(.0, .6, curve: Curves.ease),
    ));

    // 颜色动画
    color = ColorTween(
      begin: Colors.green,
      end: Colors.red,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          .0, .6, // 间隔，前60%的动画时间
          curve: Curves.ease,
        ),
      ),
    );

    // 平移动画
    padding = Tween<EdgeInsets>(
      begin: const EdgeInsets.only(left: .0),
      end: const EdgeInsets.only(left: 100.0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: const Interval(.6, 1),
    ));
  }

  late final Animation<double> controller;
  late final Animation<double> height;
  late final Animation<EdgeInsets> padding;
  late final Animation<Color?> color;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      // child: child,
      builder: (context, child) {
        return Container(
          alignment: Alignment.bottomCenter,
          padding: padding.value,
          child: Container(
            color: color.value,
            width: 50,
            height: height.value,
          ),
        );
      },
    );
  }
}
