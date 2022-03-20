///
/// Author       : zhongaidong
/// Date         : 2022-03-20 15:59:25
/// Description  : 阻止冒泡
///

import 'package:flutter/material.dart';

class StopBubbleNotificationTest extends StatefulWidget {
  const StopBubbleNotificationTest({Key? key}) : super(key: key);

  @override
  State<StopBubbleNotificationTest> createState() =>
      _StopBubbleNotificationTestState();
}

class _StopBubbleNotificationTestState
    extends State<StopBubbleNotificationTest> {
  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义通知')),
      body: NotificationListener<MyNotification>(
        onNotification: (notification) {
          print(notification.msg);
          return true;
        },
        child: NotificationListener<MyNotification>(
          onNotification: (notification) {
            setState(() {
              _msg += notification.msg + "   ";
            });
            return false;
          },
          child: Center(
            child: Column(
              children: [
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () => MyNotification('Hi').dispatch(context),
                    child: const Text('Send Notification'),
                  ),
                ),
                Text(_msg),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 自定义通知
class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
