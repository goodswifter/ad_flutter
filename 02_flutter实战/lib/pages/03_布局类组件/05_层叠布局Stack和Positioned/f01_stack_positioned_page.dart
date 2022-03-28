///
/// Author       : zhongaidong
/// Date         : 2022-03-03 12:22:43
/// Description  :
///

import 'package:flutter/material.dart';

class StackPositionedPage extends StatelessWidget {
  const StackPositionedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('层叠布局')),
      body: ConstrainedBox(
        // 通过ConstrainedBox来确保Stack占满屏幕
        constraints: const BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center, // 指定未定位或部分定位widget的对齐方式
          fit: StackFit.expand, // 未定位widget占满Stack整个空间
          children: [
            const Positioned(left: 18.0, child: Text("I am Jack")),
            Container(
              child: const Text("Hello world",
                  style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            const Positioned(top: 18.0, child: Text("Your friend"))
          ],
        ),
      ),
    );
  }
}
