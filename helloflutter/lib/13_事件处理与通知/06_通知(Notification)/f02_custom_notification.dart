///
/// Author       : zhongaidong
/// Date         : 2022-03-20 15:48:12
/// Description  : 自定义通知
///

import 'package:flutter/material.dart';

class CustomNotificationTest extends StatefulWidget {
  const CustomNotificationTest({Key? key}) : super(key: key);

  @override
  State<CustomNotificationTest> createState() => _CustomNotificationTestState();
}

class _CustomNotificationTestState extends State<CustomNotificationTest> {
  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义通知')),
      body: NotificationListener<MyNotification>(
        onNotification: (notification) {
          setState(() {
            _msg += notification.msg + "   ";
          });
          return true;
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
    );
  }
}

/// 自定义通知
class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
