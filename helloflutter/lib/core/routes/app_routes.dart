///
/// Author       : zhongaidong
/// Date         : 2022-03-21 12:45:20
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/pages/main/home_page.dart';

import 'f01_first_app_routes.dart';
import 'f07_event_routes.dart';

abstract class AppRoutes {
  // ------------------- Main -------------------
  static const initial = '/';

  static Map<String, WidgetBuilder> routes() {
    Map<String, WidgetBuilder> routes = mainRoutes;
    // 01 第一个Flutter应用
    routes.addAll(FirstRoutes.routes);
    // 07 事件处理与通知
    routes.addAll(EventRoutes.routes);
    return routes;
  }

  static Map<String, WidgetBuilder> mainRoutes = {
    // ------------------- Main -------------------
    initial: (_) => const HomePage(),
  };
}
