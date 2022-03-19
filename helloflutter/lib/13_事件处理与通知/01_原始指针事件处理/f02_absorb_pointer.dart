///
/// Author       : zhongaidong
/// Date         : 2022-03-19 10:49:43
/// Description  : 忽略指针事件 AbsorbPointer 和 IgnorePointer
///

import 'package:flutter/material.dart';

/*
AbsorbPointer 和 IgnorePointer 的区别
  相同点: 两个组件都能阻止子树接收指针事件
  不同点: 
  AbsorbPointer: 接收指针事件并向上传递, 但会阻止子树接收指针事件
  IgnorePointer: 阻止子树接收指针事件, 不参与Hit Test(点击测试), 也就是不会向上传递
*/
class AbsorbPointerTest extends StatelessWidget {
  const AbsorbPointerTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('忽略指针事件')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Listener(
              child: AbsorbPointer(
                child: Listener(
                  child: Container(
                    color: Colors.red,
                    width: 200.0,
                    height: 100.0,
                  ),
                  onPointerDown: (event) => print("AbsorbPointer - in"),
                ),
              ),
              onPointerDown: (event) => print("AbsorbPointer - up"),
            ),
            const SizedBox(height: 20),
            Listener(
              child: IgnorePointer(
                child: Listener(
                  child: Container(
                    color: Colors.blue,
                    width: 200.0,
                    height: 100.0,
                  ),
                  onPointerDown: (event) => print("IgnorePointer - in"),
                ),
              ),
              onPointerDown: (event) => print("IgnorePointer - up"),
            ),
          ],
        ),
      ),
    );
  }
}
