///
/// Author       : zhongaidong
/// Date         : 2022-03-04 20:46:37
/// Description  :
///

import 'package:flutter/material.dart';

import '../widgets/layout_log_print.dart';
import '../widgets/response_column.dart';

class LayoutBuilderTest extends StatelessWidget {
  const LayoutBuilderTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _children =
        List.filled(6, Container(color: Colors.red, child: const Text("A")));
    // Column在本示例中在水平方向的最大宽度为屏幕的宽度
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder测试')),
      // Column在本示例中在水平方向的最大宽度为屏幕的宽度
      body: Column(
        children: [
          SizedBox(width: 190, child: ResponseColumn(children: _children)),
          ResponseColumn(children: _children),
          const LayoutLogPrint(child: Text("xx")),
        ],
      ),
    );
  }
}
