///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:00:13
/// Description  : 07 事件处理与通知
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/01_%E5%8E%9F%E5%A7%8B%E6%8C%87%E9%92%88%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86/f01_listener_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/01_%E5%8E%9F%E5%A7%8B%E6%8C%87%E9%92%88%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86/f02_absorb_pointer_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/02_%E6%89%8B%E5%8A%BF%E8%AF%86%E5%88%AB/01_%E6%89%8B%E5%8A%BF%E6%A3%80%E6%B5%8B%E5%99%A8GestureDetector/f01_gesture_detector_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/02_%E6%89%8B%E5%8A%BF%E8%AF%86%E5%88%AB/01_%E6%89%8B%E5%8A%BF%E6%A3%80%E6%B5%8B%E5%99%A8GestureDetector/f02_drag_random_direction_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/02_%E6%89%8B%E5%8A%BF%E8%AF%86%E5%88%AB/01_%E6%89%8B%E5%8A%BF%E6%A3%80%E6%B5%8B%E5%99%A8GestureDetector/f03_drag_single_direction_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/02_%E6%89%8B%E5%8A%BF%E8%AF%86%E5%88%AB/01_%E6%89%8B%E5%8A%BF%E6%A3%80%E6%B5%8B%E5%99%A8GestureDetector/f04_scale_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/02_%E6%89%8B%E5%8A%BF%E8%AF%86%E5%88%AB/02_%E6%89%8B%E5%8A%BF%E8%AF%86%E5%88%AB%E5%99%A8GestureRecognizer/f01_gesture_recognizer_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/03_%E4%BA%8B%E4%BB%B6%E6%9C%BA%E5%88%B6/f01_watermark_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/03_%E4%BA%8B%E4%BB%B6%E6%9C%BA%E5%88%B6/f02_stack_event_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/03_%E4%BA%8B%E4%BB%B6%E6%9C%BA%E5%88%B6/f03_gesture_hit_test_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/04_%E6%89%8B%E5%8A%BF%E5%8E%9F%E7%90%86%E4%B8%8E%E6%89%8B%E5%8A%BF%E5%86%B2%E7%AA%81/f01_gesture_detector_contend_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/04_%E6%89%8B%E5%8A%BF%E5%8E%9F%E7%90%86%E4%B8%8E%E6%89%8B%E5%8A%BF%E5%86%B2%E7%AA%81/f02_drag_gesture_contend_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/04_%E6%89%8B%E5%8A%BF%E5%8E%9F%E7%90%86%E4%B8%8E%E6%89%8B%E5%8A%BF%E5%86%B2%E7%AA%81/f03_gesture_conflict_page01.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/04_%E6%89%8B%E5%8A%BF%E5%8E%9F%E7%90%86%E4%B8%8E%E6%89%8B%E5%8A%BF%E5%86%B2%E7%AA%81/f04_gesture_conflict_page02.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/04_%E6%89%8B%E5%8A%BF%E5%8E%9F%E7%90%86%E4%B8%8E%E6%89%8B%E5%8A%BF%E5%86%B2%E7%AA%81/f05_custom_gesture_recognizer_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/06_%E9%80%9A%E7%9F%A5Notification/f01_list_view_notifcation_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/06_%E9%80%9A%E7%9F%A5Notification/f02_custom_notification_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/06_%E9%80%9A%E7%9F%A5Notification/f03_stop_bubble_notification_page.dart';
import 'package:flutter_combat/pages/07_%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/event_handle_and_notification_page.dart';

import 'f07_event_names.dart';

abstract class EventRoutes {
  static Map<String, WidgetBuilder> routes = {
    EventNames.eventHandle: (_) => const EventHandleAndNotificationPage(),
    // ------------------- 01_原始指针事件处理 -------------------
    EventNames.listenerPage: (_) => const ListenerPage(),
    EventNames.absorbPointerPage: (_) => const AbsorbPointerPage(),

    // ------------------- 02_手势识别 -------------------
    EventNames.gestureDetectorPage: (_) => const GestureDetectorPage(),
    EventNames.dragRandomDirectionPage: (_) => const DragRandomDirectionPage(),
    EventNames.dragSingleDirectionPage: (_) => const DragSingleDirectionPage(),
    EventNames.scalePage: (_) => const ScaleTest(),
    EventNames.gestureRecognizerPage: (_) => const GestureRecognizerPage(),

    // ------------------- 03_事件机制 -------------------
    EventNames.watermarkPage: (_) => const WatermarkPage(),
    EventNames.stackEventPage: (_) => const StackEventPage(),
    EventNames.gestureHitTestPage: (_) => const GestureHitTestBlockerPage(),

    // ------------------- 04_手势原理与手势冲突 -------------------
    EventNames.gestureDetectorContendPage: (_) =>
        const GestureDetectorContendPage(),
    EventNames.dragGestureContendPage: (_) => const DragGestureContendPage(),
    EventNames.gestureConflictPage01: (_) => const GestureConflictPage01(),
    EventNames.gestureConflictPage02: (_) => const GestureConflictPage02(),
    EventNames.customGestureRecognizerPage: (_) =>
        const CustomGestureRecognizerPage(),

    // ------------------- 05_事件总线 -------------------

    // ------------------- 06_通知(Notification) -------------------
    EventNames.listViewNotifcationPage: (_) => const ListViewNotificationPage(),
    EventNames.customNotificationPage: (_) => const CustomNotificationPage(),
    EventNames.stopBubbleNotificationPage: (_) =>
        const StopBubbleNotificationPage(),
  };
}
