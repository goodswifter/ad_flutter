///
/// Author       : zhongaidong
/// Date         : 2022-03-20 09:44:06
/// Description  :
///

import 'package:flutter/material.dart';
/*
onNotification: 是否阻止通知冒泡
当返回值为true时，阻止冒泡，其父级Widget将再也收不到该通知；
当返回值为false 时继续向上冒泡通知。
 */
class ListViewNotification extends StatelessWidget {
  const ListViewNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('可滚动组件通知')),
      body: NotificationListener(
        onNotification: (notification) {
          switch (notification.runtimeType) {
            case ScrollStartNotification:
              print("开始滚动");
              break;
            case ScrollUpdateNotification:
              print("正在滚动");
              break;
            case ScrollEndNotification:
              print("滚动停止");
              break;
            case OverscrollNotification:
              print("滚动到边界");
              break;
          }
          return false;
        },
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("$index"),
              );
            }),
      ),
    );
  }
}
