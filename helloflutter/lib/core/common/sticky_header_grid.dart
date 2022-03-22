///
/// Author       : zhongaidong
/// Date         : 2022-03-19 22:56:13
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import 'common_grid_item.dart';
import 'widgets/grid_header.dart';
import 'widgets/grid_item_button.dart';

class StickyHeaderGrid extends StatelessWidget {
  const StickyHeaderGrid({
    Key? key,
    this.groupTitle = '组名',
    required this.children,
    this.isSafeArea = false,
  }) : super(key: key);

  final String groupTitle;
  final List<CommonGridItem> children;
  final bool isSafeArea;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: GridHeader(title: groupTitle),
      sliver: isSafeArea
          ? SliverSafeArea(sliver: sliverGridWidget())
          : sliverGridWidget(),
    );
  }

  sliverGridWidget() {
    return SliverGrid(
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
    );
  }

  Widget jumpButton(BuildContext context, String page, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridItemButton(
        onPressed: () => Navigator.pushNamed(context, page),
        title: title,
      ),
    );
  }
}
