///
/// Author       : zhongaidong
/// Date         : 2022-03-19 22:25:21
/// Description  :
///

import 'package:flutter/material.dart';

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

class EventData {
  static final List<String> _groupTitles = [
    
    '05 事件总线',
    '06 通知 Notification',
  ];

  static final List<Map> eventMap = [
    {
      'title': '01 原始指针事件处理',
      'chilren': const [
        {
          'title': '原始事件',
          'page': ListenerTest(),
        },
        {
          'title': '忽略事件',
          'page': AbsorbPointerTest(),
        },
      ],
    },
    {
      'title': '02 手势识别',
      'chilren': const [
        {
          'title': '点击、双击、长按',
          'page': GestureDetectorTest(),
        },
        {
          'title': '拖动(任意方向)',
          'page': DragRandomDirectionTest(),
        },
        {
          'title': '拖动(单一方向)',
          'page': DragSingleDirectionTest(),
        },
        {
          'title': '缩放',
          'page': ScaleTest(),
        },
        {
          'title': '手势识别',
          'page': GestureRecognizerTest(),
        },
      ],
    },
    {
      'title': '03 Flutter事件机制',
      'chilren': const [
        {
          'title': '水印',
          'page': WatermarkTest(),
        },
        {
          'title': 'Stack Hit Test',
          'page': StackEventTest(),
        },
        {
          'title': '手势 Hit Test',
          'page': GestureHitTestBlockerTest(),
        },
      ],
    },
    {
      'title': '04 手势原理与手势冲突',
      'chilren': const [
        {
          'title': '手势竞争',
          'page': GestureDetectorContend(),
        },
        {
          'title': '拖动手势竞争',
          'page': DragGestureContend(),
        },
        {
          'title': '多手势冲突',
          'page': GestureConflictTest(),
        },
        {
          'title': '多手势冲突解决',
          'page': GestureConflictTest02(),
        },
        {
          'title': '自定义识别器解决冲突',
          'page': CustomGestureRecognizerTest(),
        },
      ],
    },
  ];
}
