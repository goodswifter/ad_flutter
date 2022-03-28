///
/// Author       : zhongaidong
/// Date         : 2022-03-22 08:25:42
/// Description  : 基础组件
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/core/common/widgets/grid_item_scaffold.dart';
import 'package:flutter_combat/core/const/resource.dart';

class BaseWidgetsPage extends StatelessWidget {
  const BaseWidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridItemScaffold(
      title: '基础组件',
      jsonString: R.assetsJson02BaseWidgetsDataJson,
    );
  }
}
