///
/// Author       : zhongaidong
/// Date         : 2022-03-26 09:49:40
/// Description  :
///

import 'package:flutter/material.dart';

import 'render_custom_checkbox.dart';

class CustomCheckbox extends LeafRenderObjectWidget {
  const CustomCheckbox({
    Key? key,
    this.strokeWidth = 2.0,
    this.value = false,
    this.strokeColor = Colors.white,
    this.fillColor = Colors.blue,
    this.radius = 2.0,
    this.onChanged,
  }) : super(key: key);

  final double strokeWidth; // “勾”的线条宽度
  final Color strokeColor; // “勾”的线条宽度
  final Color fillColor; // 填充颜色
  final bool value; // 选中状态
  final double radius; // 圆角
  final ValueChanged<bool>? onChanged; // 选中状态发生改变后的回调

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderCustomCheckbox(
      strokeWidth,
      strokeColor,
      fillColor,
      value,
      radius,
      onChanged,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderCustomCheckbox renderObject) {
    if (renderObject.value != value) {
      renderObject.animationStatus =
          value ? AnimationStatus.forward : AnimationStatus.reverse;
    }
    renderObject
      ..strokeWidth = strokeWidth
      ..strokeColor = strokeColor
      ..fillColor = fillColor
      ..radius = radius
      ..value = value
      ..onChanged = onChanged;
  }
}
