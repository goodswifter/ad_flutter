import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-03-02 12:22:20
/// Description  : 多重限制
///

class ConstraintTest extends StatelessWidget {
  const ConstraintTest({Key? key}) : super(key: key);

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
            )),
      ),
    );
  }
}

class ConstrainedWidget01 extends StatelessWidget {
  const ConstrainedWidget01({Key? key, required this.redBox}) : super(key: key);

  final Widget redBox;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 20, maxWidth: 100),
      // constraints: const BoxConstraints(minHeight: 20, minWidth : 40),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 100, maxWidth: 20),
        child: SizedBox(width: 80.0, height: 80.0, child: redBox),
      ),
    );
  }
}
