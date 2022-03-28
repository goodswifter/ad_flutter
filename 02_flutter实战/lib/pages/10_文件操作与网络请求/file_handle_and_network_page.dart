///
/// Author       : zhongaidong
/// Date         : 2022-03-26 18:21:16
/// Description  : 文件操作与网络请求
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/core/common/widgets/grid_group_scaffold.dart';
import 'package:flutter_combat/core/const/resource.dart';

class FileHanleAndNetworkPage extends StatelessWidget {
  const FileHanleAndNetworkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridGroupScaffold(
      title: '文件操作与网络请求',
      jsonString: R.assetsJson10FileNetworkDataJson,
    );
  }
}
