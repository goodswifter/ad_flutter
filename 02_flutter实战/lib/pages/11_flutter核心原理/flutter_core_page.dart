/// 
/// Author       : zhongaidong
/// Date         : 2022-03-29 21:31:06
/// Description  : 
/// 
import 'package:flutter/material.dart';
import 'package:flutter_combat/core/common/widgets/grid_item_scaffold.dart';
import 'package:flutter_combat/core/const/resource.dart';

class FlutterCorePage extends StatelessWidget {
  const FlutterCorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridItemScaffold(
      title: 'Flutter核心原理',
      jsonString: R.assetsJson11FlutterCoreDataJson,
    );
  }
}