///
/// Author       : zhongaidong
/// Date         : 2022-04-13 08:08:13
/// Description  :
///
import 'package:flutter/material.dart';
import 'package:github_client_app/common/global.dart';
import 'package:github_client_app/models/app_theme.dart';
import 'package:github_client_app/models/index.dart';

class ProfileState {
  /// 用户信息，需要绑定到全局
  final profile = Global.profile;

  /// 账号信息
  late User? user;

  /// 获取当前Locale
  late Locale? locale;

  /// 主题
  late ThemeData theme;

  /// 是否登录
  late bool isLogin;

  ProfileState() {
    user = profile.user;
    isLogin = profile.user != null;
    // 获取当前主题类型
    ThemeType themeType = ThemeType.values.firstWhere(
      (e) => e.index == profile.theme,
      orElse: () => ThemeType.purple,
    );
    theme = AppTheme.getThemeData(themeType);
  }
}
