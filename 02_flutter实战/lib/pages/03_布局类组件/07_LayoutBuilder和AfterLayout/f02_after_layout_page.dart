///
/// Author       : zhongaidong
/// Date         : 2022-03-04 21:06:14
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/widgets/after_layout.dart';

/*
1. 获取当前组件大小和相对于屏幕的坐标
2. 获取某个父类组件的坐标
*/
class AfterLayoutPage extends StatefulWidget {
  const AfterLayoutPage({Key? key}) : super(key: key);

  @override
  _AfterLayoutPageState createState() => _AfterLayoutPageState();
}

class _AfterLayoutPageState extends State<AfterLayoutPage> {
  String _text = 'flutter 实战 ';
  Size _size = Size.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('获取组件坐标')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Builder(
              builder: (context) {
                return GestureDetector(
                  child: const Text(
                    'Text1: 点我获取我的大小',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () => print('Text1: ${context.size}'),
                );
              },
            ),
          ),
          AfterLayout(
            callback: (RenderAfterLayout ral) {
              print('Text2： ${ral.size}, ${ral.offset}');
            },
            child: const Text('Text2：flutter@wendux'),
          ),
          Builder(builder: (context) {
            return Container(
              color: Colors.grey.shade200,
              alignment: Alignment.center,
              width: 100,
              height: 100,
              child: AfterLayout(
                callback: (RenderAfterLayout ral) {
                  Offset offset = ral.localToGlobal(
                    Offset.zero,
                    ancestor: context.findRenderObject(),
                  );
                  print('A 在 Container 中占用的空间范围为：${offset & ral.size}');
                },
                child: const Text('A'),
              ),
            );
          }),
          const Divider(),
          AfterLayout(
            child: Text(_text),
            callback: (RenderAfterLayout value) {
              setState(() {
                // 更新尺寸信息
                _size = value.size;
              });
            },
          ),
          // 显示上面 Text 的尺寸
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Text size: $_size ',
              style: const TextStyle(color: Colors.blue),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _text += 'flutter 实战 ';
              });
            },
            child: const Text('追加字符串'),
          ),
        ],
      ),
    );
  }
}
