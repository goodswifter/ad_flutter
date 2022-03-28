///
/// Author       : zhongaidong
/// Date         : 2022-03-28 18:31:03
/// Description  : 普通Widget转Sliver
///
import 'package:flutter/material.dart';

class SliverToBoxAdapterPage extends StatelessWidget {
  const SliverToBoxAdapterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliver适配器')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: PageView(
                children: const [Text("1"), Text("2")],
              ),
            ),
          ),
          buildSliverFixedList(),
        ],
      ),
    );
  }

  // 构建固定高度的SliverList，count为列表项属相
  Widget buildSliverFixedList([int count = 5]) {
    return SliverFixedExtentList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(title: Text('$index')),
        childCount: count,
      ),
      itemExtent: 50,
    );
  }
}
