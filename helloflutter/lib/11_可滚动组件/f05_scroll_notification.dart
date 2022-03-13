import 'package:flutter/material.dart';

class ScrollNotificationTest extends StatefulWidget {
  const ScrollNotificationTest({Key? key}) : super(key: key);

  @override
  State<ScrollNotificationTest> createState() => _ScrollNotificationTestState();
}

class _ScrollNotificationTestState extends State<ScrollNotificationTest> {
  String _progress = "0%"; // 保存进度百分比

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('滚动监听')),
      body: Scrollbar(
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            double progress = notification.metrics.pixels /
                notification.metrics.maxScrollExtent;
            print("BottomEdge: ${notification.metrics.extentAfter == 0}");
            // 重新构建
            setState(() {
              _progress = "${(progress * 100).toInt()}%";
            });
            return false;
          },
          child: NotificationListener<ScrollNotification>(
            // 冒泡通知
            // 返回值true表示消费掉当前通知不再向上一级NotificationListener传递通知，false则会再向上一级NotificationListener传递通知；这里需要注意的是通知是由下而上去传递的，所以才会称作冒泡通知
            onNotification: (notification) {
              return false;
              // return true; // 放开此行注释后，进度条将失效
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                ListView.builder(
                  itemCount: 100,
                  itemExtent: 50.0,
                  itemBuilder: (context, index) =>
                      ListTile(title: Text("$index")),
                ),
                CircleAvatar(
                  // 显示进度百分比
                  radius: 30.0,
                  child: Text(_progress),
                  backgroundColor: Colors.black54,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
