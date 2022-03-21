///
/// Author       : zhongaidong
/// Date         : 2022-03-19 11:10:52
/// Description  : 事件处理与通知
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloflutter/core/common/common_grid_group.dart';
import 'package:helloflutter/core/common/sticky_header_grid.dart';
import 'package:helloflutter/core/const/resource.dart';

class EventHandleAndNotificationPage extends StatelessWidget {
  const EventHandleAndNotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('事件处理与通知')),
      body: FutureBuilder(
        future: rootBundle.loadString(R.ASSETS_JSON_07_EVENT_DATA_JSON),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error ${snapshot.error}');
            } else {
              print(snapshot.data);
              List<CommonGridGroupModel> eventModels = groupDataFromJson(snapshot.data);
              List<Widget> grids = eventModels
                  .map((e) => StickyHeaderGrid(
                        groupTitle: e.groupTitle ?? '哈哈',
                        children: e.children ?? [],
                      ))
                  .toList();
              return CustomScrollView(slivers: grids);
            }
          } else {
            return const Center(child: CupertinoActivityIndicator());
          }
        },
      ),
    );
  }
}
