///
/// Author       : zhongaidong
/// Date         : 2022-03-09 20:26:28
/// Description  :
///

import 'package:flutter/material.dart';

/*
通常SingleChildScrollView只应在期望的内容不会超过屏幕太多时使用

SingleChildScrollView不支持基于 Sliver 的延迟加载模型，所以如果预计视口可能包含超出屏幕尺寸太多的内容时，那么使用SingleChildScrollView将会非常昂贵（性能差），此时应该使用一些支持Sliver延迟加载的可滚动组件，如ListView。
*/
class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scaffold(
      appBar: AppBar(title: const Text('SingleChildScrollView')),
      body: Scrollbar(
        // 显示进度条
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              // 动态创建一个List<Widget>
              children: str
                  .split("")
                  // 每一个字母都用一个Text显示, 字体为原来的两倍
                  .map((c) => Text(c, textScaleFactor: 2.0))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
