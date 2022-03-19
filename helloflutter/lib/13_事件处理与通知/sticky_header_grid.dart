///
/// Author       : zhongaidong
/// Date         : 2022-03-19 22:56:13
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import 'common.dart';

class StickyHeaderGrid extends StatelessWidget {
  const StickyHeaderGrid(
      {Key? key, this.groupTitle = '组名', required this.children})
      : super(key: key);

  final String groupTitle;
  final List<Map<String, Object>> children;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Header(title: groupTitle),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 4,
        ),
        delegate: SliverChildBuilderDelegate(((context, index) => Container())),
        // delegate: SliverChildBuilderDelegate(
        //   (context, i) =>
        //       jumpButton(context, children[i], children[i]),
        //   childCount: children.length,
      ),
    );
  }

  Widget jumpButton(BuildContext context, Widget page, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => page)),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
