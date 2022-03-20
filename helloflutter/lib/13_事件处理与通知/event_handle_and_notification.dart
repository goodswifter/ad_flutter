///
/// Author       : zhongaidong
/// Date         : 2022-03-19 11:10:52
/// Description  : 事件处理与通知
///

import 'package:flutter/material.dart';

import 'event_data.dart';
import 'other/sticky_header_grid.dart';
import 'other/event_model.dart';

class EventHandleAndNotificationTest extends StatelessWidget {
  const EventHandleAndNotificationTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<EventModel> eventModels =
        EventData.eventMap.map((e) => EventModel.fromJson(e)).toList();
    List<Widget> grids = eventModels
        .map((e) => StickyHeaderGrid(
              groupTitle: e.groupTitle ?? '哈哈',
              children: e.children ?? [] ,
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(title: const Text('事件处理与通知')),
      body: CustomScrollView(slivers: grids),
    );
  }
}
