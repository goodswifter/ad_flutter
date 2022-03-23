///
/// Author       : zhongaidong
/// Date         : 2022-03-21 12:45:20
/// Description  :
///
import 'package:flutter/material.dart';
import 'package:helloflutter/core/routes/f09_custom_widget_routes.dart';
import 'package:helloflutter/core/routes/subroutes/f01_first_app_routes.dart';
import 'package:helloflutter/core/routes/subroutes/f07_event_routes.dart';
import 'package:helloflutter/core/routes/subroutes/f08_animation_routes.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/animation_page.dart';
import 'package:helloflutter/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/custom_widget_page.dart';
import 'package:helloflutter/pages/main/home_page.dart';

abstract class AppRoutes {
  // ------------------- Main -------------------
  static const initial = '/';

  static Map<String, WidgetBuilder> routes() {
    Map<String, WidgetBuilder> routes = mainRoutes;
    // 01_第一个flutter应用
    routes.addAll(FirstAppRoutes.routes);
    // 07_事件处理与通知
    routes.addAll(EventRoutes.routes);
    // 08_动画
    routes.addAll(AnimationRoutes.routes);
    // 09_自定义组件
    routes.addAll(CustomWidgetRoutes.routes);
    return routes;
  }

  static Map<String, WidgetBuilder> mainRoutes = {
    // ------------------- Main -------------------
    // initial: (_) => const HomePage(),
    initial: (_) => const CustomWidgetPage(),
  };
}
