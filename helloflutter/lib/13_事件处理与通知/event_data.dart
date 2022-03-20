///
/// Author       : zhongaidong
/// Date         : 2022-03-19 22:25:21
/// Description  :
///

import 'package:helloflutter/13_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/06_%E9%80%9A%E7%9F%A5(Notification)/f02_custom_notification.dart';
import 'package:helloflutter/13_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/06_%E9%80%9A%E7%9F%A5(Notification)/f03_stop_bubble_notification.dart';

import '01_原始指针事件处理/f01_listener.dart';
import '01_原始指针事件处理/f02_absorb_pointer.dart';
import '02_手势识别/01_手势检测器(GestureDetector)/f01_gesture_detector01.dart';
import '02_手势识别/01_手势检测器(GestureDetector)/f02_drag_random_direction.dart';
import '02_手势识别/01_手势检测器(GestureDetector)/f03_drag_single_direction.dart';
import '02_手势识别/01_手势检测器(GestureDetector)/f04_scale.dart';
import '02_手势识别/02_手势识别器(GestureRecognizer)/f01_gesture_recognizer.dart';
import '03_事件机制/f01_watermark.dart';
import '03_事件机制/f02_stack_event.dart';
import '03_事件机制/f03_gesture_hit_test.dart';
import '04_手势原理与手势冲突/f01_gesture_detector_contend.dart';
import '04_手势原理与手势冲突/f02_drag_gesture_contend.dart';
import '04_手势原理与手势冲突/f03_gesture_conflict.dart';
import '04_手势原理与手势冲突/f04_gesture_conflict02.dart';
import '04_手势原理与手势冲突/f05_custom_gesture_recognizer.dart';
import '06_通知(Notification)/f01_list_view_notifcation.dart';

class EventData {
  static final List<Map<String, dynamic>> eventMap = [
    {
      'groupTitle': '01 原始指针事件处理',
      'children': const [
        {
          'itemTitle': '原始事件',
          'jumpPage': ListenerTest(),
        },
        {
          'itemTitle': '忽略事件',
          'jumpPage': AbsorbPointerTest(),
        },
      ],
    },
    {
      'groupTitle': '02 手势识别',
      'children': const [
        {
          'itemTitle': '点击、双击、长按',
          'jumpPage': GestureDetectorTest(),
        },
        {
          'itemTitle': '拖动(任意方向)',
          'jumpPage': DragRandomDirectionTest(),
        },
        {
          'itemTitle': '拖动(单一方向)',
          'jumpPage': DragSingleDirectionTest(),
        },
        {
          'itemTitle': '缩放',
          'jumpPage': ScaleTest(),
        },
        {
          'itemTitle': '手势识别',
          'jumpPage': GestureRecognizerTest(),
        },
      ],
    },
    {
      'groupTitle': '03 Flutter事件机制',
      'children': const [
        {
          'itemTitle': '水印',
          'jumpPage': WatermarkTest(),
        },
        {
          'itemTitle': 'Stack Hit Test',
          'jumpPage': StackEventTest(),
        },
        {
          'itemTitle': '手势 Hit Test',
          'jumpPage': GestureHitTestBlockerTest(),
        },
      ],
    },
    {
      'groupTitle': '04 手势原理与手势冲突',
      'children': const [
        {
          'itemTitle': '手势竞争',
          'jumpPage': GestureDetectorContend(),
        },
        {
          'itemTitle': '拖动手势竞争',
          'jumpPage': DragGestureContend(),
        },
        {
          'itemTitle': '多手势冲突',
          'jumpPage': GestureConflictTest(),
        },
        {
          'itemTitle': '多手势冲突解决',
          'jumpPage': GestureConflictTest02(),
        },
        {
          'itemTitle': '自定义识别器解决冲突',
          'jumpPage': CustomGestureRecognizerTest(),
        },
      ],
    },
    {
      'groupTitle': '05 事件总线',
    },
    {
      'groupTitle': '06 通知 Notification',
      'children': const [
        {
          'itemTitle': '可滚动组件滚动通知',
          'jumpPage': ListViewNotification(),
        },
        {
          'itemTitle': '自定义通知',
          'jumpPage': CustomNotificationTest(),
        },
        {
          'itemTitle': '阻止冒泡通知',
          'jumpPage': StopBubbleNotificationTest(),
        },
      ],
    },
  ];
}
