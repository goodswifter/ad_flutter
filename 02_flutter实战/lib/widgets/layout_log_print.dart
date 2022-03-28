import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-03-04 20:57:08
/// Description  : 打印BoxConstraint
///

class LayoutLogPrint<T> extends StatelessWidget {
  const LayoutLogPrint({Key? key, required this.child, this.tag})
      : super(key: key);

  final Widget child;
  final T? tag; // 指定日志tag

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // assert在编译release版本时会被去除
        assert(() {
          print('${tag ?? key ?? child}: $constraints');
          return true;
        }());
        return child;
      },
    );
  }
}
