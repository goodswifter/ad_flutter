///
/// Author       : zhongaidong
/// Date         : 2022-03-19 11:10:52
/// Description  : 事件处理与通知
///

import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import 'sticky_header_grid.dart';

class EventHandleAndNotificationTest2 extends StatelessWidget {
  EventHandleAndNotificationTest2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('事件处理与通知')),
      body: CustomScrollView(slivers: [
        // StickyHeaderGrid()
      ]),
    );
  }


}
