/// 
/// Author       : zhongaidong
/// Date         : 2022-03-23 11:26:21
/// Description  : 自定义组件
/// 

import 'package:flutter/material.dart';
import 'package:helloflutter/core/common/widgets/grid_group_scaffold.dart';
import 'package:helloflutter/core/const/resource.dart';

class CustomWidgetPage extends StatelessWidget {
  const CustomWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridGroupScaffold(
       title: '自定义组件',
       jsonString: R.ASSETS_JSON_09_CUSTOM_WIDGET_DATA_JSON,
    );
  }
}