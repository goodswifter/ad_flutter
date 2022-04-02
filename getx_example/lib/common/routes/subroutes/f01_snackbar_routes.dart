///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 01 第一个Flutter应用
///
import 'package:flutter/material.dart';

import 'f01_snackbar_names.dart';

abstract class SnackbarRoutes {
  static Map<String, WidgetBuilder> routes = {
    SnackbarNames.firstFlutterApp: ((_) => const FirstFlutterAppPage()),

    // ------------------- 01_计数器应用 -------------------
  };
}
