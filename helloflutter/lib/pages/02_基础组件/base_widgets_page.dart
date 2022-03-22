/// 
/// Author       : zhongaidong
/// Date         : 2022-03-22 08:25:42
/// Description  : 基础组件
/// 

import 'package:flutter/material.dart';
import 'package:helloflutter/core/common/widgets/grid_group_scaffold.dart';
import 'package:helloflutter/core/const/resource.dart';

class BaseWidgetsPage extends StatelessWidget {
  const BaseWidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridGroupScaffold(
      title: '基础组件',
      jsonString: R.ASSETS_JSON_07_EVENT_DATA_JSON,
    );
  }
}