///
/// Author       : zhongaidong
/// Date         : 2022-03-19 11:10:52
/// Description  : 事件处理与通知
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_combat/core/common/widgets/grid_group_scaffold.dart';
import 'package:flutter_combat/core/const/resource.dart';

class EventHandleAndNotificationPage extends StatelessWidget {
  const EventHandleAndNotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridGroupScaffold(
      title: '事件处理与通知',
      jsonString: R.assetsJson07EventDataJson,
    );
  }
}
