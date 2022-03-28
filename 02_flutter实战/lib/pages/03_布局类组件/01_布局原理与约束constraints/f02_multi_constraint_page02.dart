///
/// Author       : zhongaidong
/// Date         : 2022-03-02 12:22:20
/// Description  : 多重限制
///

import 'package:flutter/material.dart';

class MultiConstraintPage02 extends StatelessWidget {
  const MultiConstraintPage02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget redBox = const DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('多重限制')),
      body: Center(
        child: ConstrainedBox(
          constraints:
              const BoxConstraints(minWidth: 60.0, minHeight: 100.0), // 父
          // “去除”父级限制
          child: UnconstrainedBox(
            child: ConstrainedBox(
              constraints:
                  const BoxConstraints(minWidth: 100.0, minHeight: 60.0), // 子
              child: redBox,
            ),
          ),
        ),
      ),
    );
  }
}
