///
/// Author       : zhongaidong
/// Date         : 2022-03-30 11:36:56
/// Description  : 全局变量-Global类
///
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:github_client_app/models/app_theme.dart';
import 'package:github_client_app/models/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'net/git.dart';
import 'net/net_cache.dart';

class Global {
  /// 数据存储对象
  static late SharedPreferences _prefs;

  /// 用户信息
  static Profile profile = Profile();

  /// 网络缓存对象
  static NetCache netCache = NetCache();

  /// 可选的主题列表
  static List get themes => themeColors;

  /// 是否为release版
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  /// 初始化全局信息，会在APP启动时执行
  static init() async {
    // 用来与 Flutter 引擎进行交互
    // 由于插件需要使用平台通道来调用本机代码，这是异步完成的，
    // 因此调用ensureInitialized()以确保您拥有WidgetsBinding.
    WidgetsFlutterBinding.ensureInitialized();

    // 初始化持久化对象
    _prefs = await SharedPreferences.getInstance();

    // 初始化用户信息
    initProfile();

    // 如果没有缓存策略，设置默认缓存策略
    profile.cache = profile.cache ?? CacheConfig()
      ..enable = true
      ..maxAge = 3600
      ..maxCount = 100;

    // 初始化网络请求相关配置
    Git.init();
  }

  /// 初始化用户信息
  static void initProfile() {
    var _profile = _prefs.getString('profile');
    if (_profile != null) {
      try {
        profile = Profile.fromJson(jsonDecode(_profile));
      } catch (e) {
        print(e);
      }
    } else {
      // 默认主题索引为0，代表蓝色
      profile = Profile()..theme = 0;
    }
  }

  /// 持久化Profile信息
  static saveProfile(Profile profile) =>
      _prefs.setString("profile", jsonEncode(profile.toJson()));
}
