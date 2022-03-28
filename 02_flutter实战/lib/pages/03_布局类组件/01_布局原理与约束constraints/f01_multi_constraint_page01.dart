import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-03-02 12:22:20
/// Description  : 多重限制
///

class MultiConstraintPage01 extends StatelessWidget {
  const MultiConstraintPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget redBox = const DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('多重限制')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 20, maxWidth: 100),
          // constraints: const BoxConstraints(minHeight: 20, minWidth : 40),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 100, maxWidth: 20),
            child: SizedBox(width: 80.0, height: 80.0, child: redBox),
          ),
        ),
      ),
    );
  }
}
