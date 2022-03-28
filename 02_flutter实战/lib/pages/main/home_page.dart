///
/// Author       : zhongaidong
/// Date         : 2022-03-21 12:58:44
/// Description  : 首页
///
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_combat/core/common/widgets/grid_item_scaffold.dart';
import 'package:flutter_combat/core/const/resource.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridItemScaffold(
      jsonString: R.assetsJsonHomeDataJson,
      title: '首页',
    );
  }
}
