///
/// Author       : zhongaidong
/// Date         : 2022-03-28 12:34:03
/// Description  :
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/core/common/widgets/grid_group_scaffold.dart';
import 'package:flutter_combat/core/const/resource.dart';

class FunctionWidgetsPage extends StatelessWidget {
  const FunctionWidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridGroupScaffold(
      title: '功能性组件',
      jsonString: R.assetsJson06FunctionWidgetsDataJson,
    );
  }
}
