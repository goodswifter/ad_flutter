/// 
/// Author       : zhongaidong
/// Date         : 2022-03-28 17:34:03
/// Description  : 
/// 
import 'package:flutter/material.dart';
import 'package:flutter_combat/core/common/widgets/grid_item_scaffold.dart';
import 'package:flutter_combat/core/const/resource.dart';

class ContainerWidgetsPage extends StatelessWidget {
  const ContainerWidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridItemScaffold(
      title: '容器类组件',
      jsonString: R.assetsJson04ContainerWidgetsDataJson,
    );
  }
}