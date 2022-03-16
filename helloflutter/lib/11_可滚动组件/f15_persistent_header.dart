///
/// Author       : zhongaidong
/// Date         : 2022-03-14 15:38:31
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/sliver_header_delegate.dart';

class PersistentHeaderTest extends StatelessWidget {
  const PersistentHeaderTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('分组列表')),
      body: CustomScrollView(slivers: [
        buildSliverList(),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverHeaderDelegate(
            child: buildHeader(1),
            maxHeight: 80,
            minHeight: 50,
          ),
        ),
        buildSliverList(),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverHeaderDelegate.fixedHeight(
            height: 80,
            child: buildHeader2(2),
          ),
        ),
        buildSliverList(20),
      ]),
    );
  }

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

  // 构建 header
  Widget buildHeader(int i) {
    return Container(
      color: Colors.lightBlue.shade200,
      alignment: Alignment.centerLeft,
      child: Text("PersistentHeader $i"),
    );
  }

  Widget buildHeader2(int i) {
    return Container(
      color: Colors.red,
      alignment: Alignment.centerLeft,
      child: Text("PersistentHeader $i"),
    );
  }
}
