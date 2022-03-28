///
/// Author       : zhongaidong
/// Date         : 2022-03-14 15:38:31
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/widgets/sliver_flexible_header/sliver_flexible_header2.dart';

class SliverFlexibleHeaderPage extends StatelessWidget {
  const SliverFlexibleHeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('可伸缩Header(微信朋友圈)')),
      body: CustomScrollView(
        // 为了能使CustomScrollView拉到顶部时还能继续往下拉，必须让 physics 支持弹性效果
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          // 我们需要实现的 SliverFlexibleHeader 组件
          SliverFlexibleHeader2(
            visibleExtent: 200, // 初始状态在列表中占用的布局高度
            // 为了能根据下拉状态变化来定制显示的布局，我们通过一个 builder 来动态构建布局。
            builder: (BuildContext context, double maxExtent, direction) =>
                GestureDetector(
              onTap: () => print('tap'), // 测试是否可以响应事件
              child: Image(
                image: const AssetImage("assets/images/avatar.png"),
                width: 50.0,
                height: maxExtent,
                alignment: Alignment.bottomCenter,
                fit: BoxFit.cover,
              ),
            ),
          ),
          buildSliverList(40),
        ],
      ),
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
}
