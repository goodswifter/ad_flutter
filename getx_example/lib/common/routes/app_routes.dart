///
/// Author       : zhongaidong
/// Date         : 2022-03-21 12:45:20
/// Description  :
///
import 'package:flutter/material.dart';

import 'subroutes/f01_snackbar_routes.dart';

abstract class AppRoutes {
  // ------------------- Main -------------------
  static const initial = '/';

  static Map<String, WidgetBuilder> routes() {
    Map<String, WidgetBuilder> routes = mainRoutes;
    // 01_第一个flutter应用
    routes.addAll(SnackbarRoutes.routes);
    return routes;
  }

  static Map<String, WidgetBuilder> mainRoutes = {
    // ------------------- Main -------------------
    initial: (_) => const HomePage(),
    // initial: (_) => const FileHanleAndNetworkPage(),
  };
}
