///
/// Author       : zhongaidong
/// Date         : 2022-03-05 10:03:47
/// Description  : FittetBox实例：单行缩放布局
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/layout_log_print.dart';
import 'package:helloflutter/widgets/single_line_fitted_box.dart';

class FittedBoxTest02 extends StatelessWidget {
  const FittedBoxTest02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('空间适配')),
      body: Center(
        child: Column(
          children: [
            LayoutLogPrint(child: wRow(' 90000000000000000 ')),
            FittedBox(
              child: LayoutLogPrint(tag: 3, child: wRow(' 90000000000000000 ')),
            ),
            LayoutLogPrint(child: wRow(' 800 '), tag: 44),
            FittedBox(child: wRow(' 800 ')),
            Container(
              width: 300,
              height: 200,
              color: Colors.green,
              child: SingleLineFittedBox(
                child: wRow(' 666 '),
              ),
            )
          ]
              .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: e,
                  ))
              .toList(),
        ),
      ),
    );
  }

  // 直接使用Row
  Widget wRow(String text) {
    Widget child = Container(child: Text(text), color: Colors.red);
    child = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [child, child, child],
    );
    return child;
  }
}
