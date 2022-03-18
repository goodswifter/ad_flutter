///
/// Author       : zhongaidong
/// Date         : 2022-03-14 17:01:06
/// Description  : 永久固定header
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/sliver_persistent_header_to_box.dart';

class SliverPersistentHeaderToBoxTest extends StatelessWidget {
  const SliverPersistentHeaderToBoxTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('name')),
      body: CustomScrollView(
        slivers: [
          buildSliverList(5),
          SliverPersistentHeaderToBox.builder(builder: headerBuilder),
          buildSliverList(5),
          SliverPersistentHeaderToBox(child: wTitle('Title 2')),
          buildSliverList(50),
        ],
      ),
    );
  }

  // 当 header 固定后显示阴影
  Widget headerBuilder(context, maxExtent, fixed) {
    // 获取当前应用主题，关于主题相关内容将在后面章节介绍，现在
    // 我们要从主题中获取一些颜色。
    var theme = Theme.of(context);
    return Material(
      child: Container(
        color: fixed ? Colors.white : theme.canvasColor,
        child: wTitle('Title 1'),
      ),
      elevation: fixed ? 4 : 0,
      shadowColor: theme.appBarTheme.shadowColor,
    );
  }

  // 我们约定小写字母 w 开头的函数代表是需要构建一个 Widget，这比 buildXX 会更简洁
  Widget wTitle(String text) =>
      ListTile(title: Text(text), onTap: () => print(text));

  // 构建固定高度的SliverList，count为列表项属相
  Widget buildSliverList([int count = 5]) {
    return SliverFixedExtentList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(title: Text('$index')),
        childCount: count,
      ),
      itemExtent: 50,
    );
  }
}
