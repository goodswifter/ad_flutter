///
/// Author       : zhongaidong
/// Date         : 2022-03-05 10:17:10
/// Description  : 单行缩放布局FittedBox
///
import 'package:flutter/material.dart';

class SingleLineFittedBox extends StatelessWidget {
  const SingleLineFittedBox({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => FittedBox(
        child: ConstrainedBox(
          constraints: constraints.copyWith(
              // 最小宽度是父类组件宽度
              minWidth: constraints.maxWidth),
          child: child,
        ),
      ),
    );
  }
}
