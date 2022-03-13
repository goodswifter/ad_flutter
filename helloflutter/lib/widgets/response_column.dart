import 'package:flutter/material.dart';

/// 一个响应式的 Column 组件 ResponsiveColumn
/// 
/// 它的功能是当当前可用的宽度小于 200 时，将子组件显示为一列，否则显示为两列
class ResponseColumn extends StatelessWidget {
  const ResponseColumn({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // 通过 LayoutBuilder 拿到父组件传递的约束，然后判断 maxWidth 是否小于200
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 200) {
          // 最大宽度小于200，显示单列
          return Column(children: children, mainAxisSize: MainAxisSize.min);
        } else {
          // 大于200，显示双列
          var _children = <Widget>[];
          int _length = children.length;
          for (var i = 0; i < _length; i += 2) {
            if (i + 1 < _length) {
              _children.add(Row(
                children: [children[i], children[i + 1]],
                mainAxisSize: MainAxisSize.min,
              ));
            } else {
              _children.add(children[i]);
            }
          }
          return Column(children: _children, mainAxisSize: MainAxisSize.min);
        }
      },
    );
  }
}
