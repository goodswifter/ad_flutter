/// 
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:01:25
/// Description  : 07 事件处理与通知
/// 

class EventNames {
  static const eventHandle = '/event_handle';

  // ------------------- 01_原始指针事件处理 -------------------
  static const listenerPage = '/event_handle/listener_page';
  static const absorbPointerPage = '/event_handle/absorb_pointer_page';

  // ------------------- 02_手势识别 -------------------
  static const gestureDetectorPage = '/event_handle/gesture_detector_page';
  static const dragRandomDirectionPage = '/event_handle/drag_random_direction_page';
  static const dragSingleDirectionPage = '/event_handle/drag_single_direction_page';
  static const scalePage = '/event_handle/scale_page';
  static const gestureRecognizerPage = '/event_handle/gesture_recognizer_page';

  // ------------------- 03_事件机制 -------------------
  static const watermarkPage = '/event_handle/watermark_page';
  static const stackEventPage = '/event_handle/stack_event_page';
  static const gestureHitTestPage = '/event_handle/gesture_hit_test_page';

  // ------------------- 04_手势原理与手势冲突 -------------------
  static const gestureDetectorContendPage = '/event_handle/gesture_detector_contend_page';
  static const dragGestureContendPage = '/event_handle/drag_gesture_contend_page';
  static const gestureConflictPage01 = '/event_handle/gesture_conflict_page01';
  static const gestureConflictPage02 = '/event_handle/gesture_conflict_page02';
  static const customGestureRecognizerPage = '/event_handle/custom_gesture_recognizer_page';

  // ------------------- 05_事件总线 -------------------

  // ------------------- 06_通知(Notification) -------------------
  static const listViewNotifcationPage = '/event_handle/list_view_notifcation_page';
  static const customNotificationPage = '/event_handle/custom_notification_page';
  static const stopBubbleNotificationPage = '/event_handle/stop_bubble_notification_page';
}