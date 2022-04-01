///
/// Author       : zhongaidong
/// Date         : 2022-03-21 12:45:20
/// Description  :
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/core/routes/subroutes/f11_flutter_core_routes.dart';
import 'package:flutter_combat/pages/main/home_page.dart';

import 'subroutes/f01_first_app_routes.dart';
import 'subroutes/f02_base_widgets_routes.dart';
import 'subroutes/f03_layout_widgets_routes.dart';
import 'subroutes/f04_container_widgets_routes.dart';
import 'subroutes/f05_scroll_widgets_routes.dart';
import 'subroutes/f06_function_widgets_routes.dart';
import 'subroutes/f07_event_routes.dart';
import 'subroutes/f08_animation_routes.dart';
import 'subroutes/f09_custom_widget_routes.dart';
import 'subroutes/f10_file_network_routes.dart';

abstract class AppRoutes {
  // ------------------- Main -------------------
  static const initial = '/';

  static Map<String, WidgetBuilder> routes() {
    Map<String, WidgetBuilder> routes = mainRoutes;
    // 01_第一个flutter应用
    routes.addAll(FirstAppRoutes.routes);
    // 02_基础组件
    routes.addAll(BaseWidgetsRoutes.routes);
    // 03_布局类组件
    routes.addAll(LayoutWidgetsRoutes.routes);
    // 04_容器类组件
    routes.addAll(ContainerWidgetsRoutes.routes);
    // 05_可滚动组件
    routes.addAll(ScrollWidgetsRoutes.routes);
    // 06_功能性组件
    routes.addAll(FunctionWidgetsRoutes.routes);
    // 07_事件处理与通知
    routes.addAll(EventRoutes.routes);
    // 08_动画
    routes.addAll(AnimationRoutes.routes);
    // 09_自定义组件
    routes.addAll(CustomWidgetRoutes.routes);
    // 10_文件操作与网络请求
    routes.addAll(FileNetworkRoutes.routes);
    // 10_文件操作与网络请求
    routes.addAll(FlutterCoreRoutes.routes);
    return routes;
  }

  static Map<String, WidgetBuilder> mainRoutes = {
    // ------------------- Main -------------------
    initial: (_) => const HomePage(),
    // initial: (_) => const FileHanleAndNetworkPage(),
  };
}
