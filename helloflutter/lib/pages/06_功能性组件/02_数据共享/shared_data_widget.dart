///
/// Author       : zhongaidong
/// Date         : 2022-03-18 13:07:51
/// Description  :
///

import 'package:flutter/material.dart';

class SharedDataWidget extends InheritedWidget {
  const SharedDataWidget({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  final int data; // 需要在子树中共享的数据，保存点击次数
  
  /// 定义一个便捷方法，方便子树中的widget获取共享数据
  static SharedDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedDataWidget>();
  }

  /// 该回调决定当data发生变化时，是否通知子树中依赖data的Widget重新build
  @override
  bool updateShouldNotify(covariant SharedDataWidget oldWidget) {
    return oldWidget.data != data;
  }
}
