///
/// Author       : zhongaidong
/// Date         : 2022-03-19 11:10:52
/// Description  : 事件处理与通知
///

import 'package:flutter/material.dart';

import 'event_handle_header.dart';

class EventHandleAndNotificationTest extends StatelessWidget {
  EventHandleAndNotificationTest({Key? key}) : super(key: key);

  final List<String> _titles = [
    '原始事件',
    '忽略事件',
    '点击、双击、长按',
    '拖动(任意方向)',
    '拖动(单一方向)',
    '缩放',
    '手势识别',
    '水印',
    'Stack Hit Test',
    '手势 Hit Test',
    '手势竞争',
    '拖动手势竞争',
    '多手势冲突',
    '多手势冲突解决',
    '自定义识别器解决冲突',
  ];
  
  final List<Widget> _pages = const [
    ListenerTest(),
    AbsorbPointerTest(),
    GestureDetectorTest(),
    DragRandomDirectionTest(),
    DragSingleDirectionTest(),
    ScaleTest(),
    GestureRecognizerTest(),
    WatermarkTest(),
    StackEventTest(),
    GestureHitTestBlockerTest(),
    GestureDetectorContend(),
    DragGestureContend(),
    GestureConflictTest(),
    GestureConflictTest02(),
    CustomGestureRecognizerTest(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('事件处理与通知')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4,
        ),
        itemCount: _titles.length,
        itemBuilder: (BuildContext context, int index) {
          return jumpButton(context, _pages[index], _titles[index]);
        },
      ),
    );
  }

  Widget jumpButton(BuildContext context, Widget page, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => page)),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
