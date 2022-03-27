///
/// Author       : zhongaidong
/// Date         : 2022-03-21 12:45:20
/// Description  :
///
import 'package:flutter/material.dart';
import 'package:helloflutter/core/routes/f10_file_network_routes.dart';
import 'package:helloflutter/core/routes/subroutes/f01_first_app_routes.dart';
import 'package:helloflutter/core/routes/subroutes/f07_event_routes.dart';
import 'package:helloflutter/core/routes/subroutes/f08_animation_routes.dart';
import 'package:helloflutter/pages/main/home_page.dart';

import 'subroutes/f09_custom_widget_routes.dart';

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
    // 10_文件操作与网络请求
    routes.addAll(FileNetworkRoutes.routes);
    return routes;
  }

  static Map<String, WidgetBuilder> mainRoutes = {
    // ------------------- Main -------------------
    initial: (_) => const HomePage(),
    // initial: (_) => const FileHanleAndNetworkPage(),
  };
}
