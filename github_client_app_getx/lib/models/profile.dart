///
/// Author       : zhongaidong
/// Date         : 2022-03-30 10:11:36
/// Description  : 用户信息(Profile)
///

import 'dart:convert';

import 'cache_config.dart';
import 'user.dart';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  Profile({
    this.user,
    this.token,
    this.theme = 0,
    this.cache,
    this.lastLogin,
    this.locale,
  });

  /// Github账号信息
  User? user;

  /// 登录用户的token(oauth)或密码
  String? token;

  /// 主题索引
  int theme;

  /// 缓存策略信息
  CacheConfig? cache;

  /// 最近一次的注销登录的用户名
  String? lastLogin;

  /// APP语言信息
  String? locale;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        token: json["token"],
        theme: json["theme"],
        cache: json["cache"] == null ? null : CacheConfig.fromJson(json["cache"]),
        lastLogin: json["lastLogin"],
        locale: json["locale"],
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "token": token,
        "theme": theme,
        "cache": cache?.toJson(),
        "lastLogin": lastLogin,
        "locale": locale,
      };
}
