///
/// Author       : zhongaidong
/// Date         : 2022-03-19 22:56:13
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:helloflutter/core/common/common_widget.dart';

import 'common_grid_item.dart';

class StickyHeaderGrid extends StatelessWidget {
  const StickyHeaderGrid(
      {Key? key, this.groupTitle = '组名', required this.children})
      : super(key: key);

  final String groupTitle;
  final List<CommonGridItem> children;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Header(title: groupTitle),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          childAspectRatio: 2,
          mainAxisExtent: 60,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, i) => jumpButton(
              context, children[i].jumpPageName!, children[i].itemTitle!),
          childCount: children.length,
        ),
      ),
    );
  }

  Widget jumpButton(BuildContext context, String page, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridButton(
        onPressed: () => Navigator.pushNamed(context, page),
        title: title,
      ),
    );
  }
}
