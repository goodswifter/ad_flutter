///
/// Author       : zhongaidong
/// Date         : 2022-03-19 21:31:59
/// Description  : 自定义Tap手势识别器
///

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTapGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    // 不，我不要失败，我要成功
    // super.rejectGesture(pointer);
    // 宣布成功
    super.acceptGesture(pointer);
  }
}

// 创建一个新的GestureDetector，用我们自定义的 CustomTapGestureRecognizer 替换默认的
RawGestureDetector customGestureDetector({
  GestureTapCallback? onTap,
  GestureTapDownCallback? onTapDown,
  Widget? child,
}) {
  return RawGestureDetector(
    child: child,
    gestures: {
      CustomTapGestureRecognizer:
          GestureRecognizerFactoryWithHandlers<CustomTapGestureRecognizer>(
        () => CustomTapGestureRecognizer(),
        (detector) => detector.onTap = onTap,
      )
    },
  );
}
