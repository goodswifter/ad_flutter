///
/// Author       : zhongaidong
/// Date         : 2022-03-30 12:45:58
/// Description  : APP主题状态
///
import 'package:flutter/material.dart';
import 'package:github_client_app/common/global.dart';

import 'profile_change_notifier.dart';

class ThemeViewModel extends ProfileChangeNotifier {
  // 获取当前主题，如果未设置主题，则默认使用蓝色主题
  MaterialColor get theme => Global.themes
      .firstWhere((e) => e.value == profile.theme, orElse: () => Colors.blue);

  // 主题改变后，通知其依赖项，新主题会立即生效
  set theme(MaterialColor color) {
    if (color != theme) {
      profile.theme = color[500]!.value;
      notifyListeners();
    }
  }
}
