///
/// Author       : zhongaidong
/// Date         : 2022-03-21 12:45:20
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/core/routes/subroutes/f07_event_routes.dart';
import 'package:helloflutter/core/routes/f08_animation_routes.dart';
import 'package:helloflutter/core/routes/subroutes/f01_first_app_routes.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/animation_page.dart';
import 'package:helloflutter/pages/main/home_page.dart';

abstract class AppRoutes {
  // ------------------- Main -------------------
  static const initial = '/';

  static Map<String, WidgetBuilder> routes() {
    Map<String, WidgetBuilder> routes = mainRoutes;
    // 01 第一个Flutter应用
    routes.addAll(FirstAppRoutes.routes);
    // 07 事件处理与通知
    routes.addAll(EventRoutes.routes);
    // 08 动画
    routes.addAll(AnimationRoutes.routes);
    return routes;
  }

  static Map<String, WidgetBuilder> mainRoutes = {
    // ------------------- Main -------------------
    // initial: (_) => const HomePage(),
    initial: (_) => const AnimationPage(),
  };
}
