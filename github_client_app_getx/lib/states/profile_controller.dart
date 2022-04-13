///
/// Author       : zhongaidong
/// Date         : 2022-03-30 12:38:49
/// Description  : 用户信息
///
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_client_app/common/global.dart';
import 'package:github_client_app/models/index.dart';

import 'profile_state.dart';

class ProfileController extends GetxController {
  final state = ProfileState();

  ProfileController() {
    state.locale = getLocale();
  }

  // 主题改变后，通知其依赖项，新主题会立即生效
  void themeChange(MaterialColor themeColor) {
    state.theme = themeColor;
    state.profile.theme = themeColor[500]!.value;
    // 保存Profile变更
    Global.saveProfile(state.profile);
    update();
  }

  // 获取当前用户的APP语言配置Locale类，如果为null，则语言跟随系统语言
  Locale? getLocale() {
    final localeString = state.profile.locale;
    if (localeString == null) return null;
    if (localeString.contains('_')) {
      var t = localeString.split('_');
      return Locale(t[0], t[1]);
    }
    return Locale(localeString);
  }

  // 用户改变APP语言后，通知依赖项更新，新语言会立即生效
  void localeChange(String? locale) {
    state.profile.locale = locale;
    state.locale = getLocale();
    Get.updateLocale(state.locale ?? window.locale);

    // 保存Profile变更
    Global.saveProfile(state.profile);
    update();
  }

  // 用户信息发生变化时，更新依赖项
  void updateUser(User? user) {
    final currentUser = state.user;
    if (user?.login != currentUser?.login) {
      state.isLogin = user != null;
      state.user = user;
      state.profile.user = user;
      state.profile.lastLogin = currentUser?.login;
      // 保存Profile变更
      Global.saveProfile(state.profile);
      update();
    }
  }
}
