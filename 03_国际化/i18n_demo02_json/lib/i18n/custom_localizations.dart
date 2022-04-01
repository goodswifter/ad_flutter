///
/// Author       : zhongaidong
/// Date         : 2022-03-29 09:11:24
/// Description  : 自定义国际化工具类
///
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_demo02_json/const/resource.dart';

import 'custom_localizations_delegate.dart';

class CustomLocalizations {
  final Locale locale;
  CustomLocalizations(this.locale);

  /// 获取当前类
  static CustomLocalizations of(BuildContext context) =>
      Localizations.of(context, CustomLocalizations);

  /// 支持的语言列表
  static List<Locale> supportedLocales = const [
    Locale("en"), // 美国英语
    Locale("zh"), // 中文简体
    // 其它Locales
  ];

  /// 支持的国际化代理
  static List<LocalizationsDelegate> localizationDelegates = [
    GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
    GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
    GlobalWidgetsLocalizations.delegate, // 指定默认的文本排列方向, 由左到右或由右到左
    CustomLocalizationsDelegate.delegate, // 自定义文本相关的代理
  ];

  static Map<String, Map<String, String>> _localizationsValues = {};

  Future loadi18nJSON() async {
    // 1. 加载JSON文件
    final jsonString = await rootBundle.loadString(R.assetsJsonI18nJson);

    // 2. 对json进行解析
    Map<String, dynamic> map = json.decode(jsonString);
    _localizationsValues = map.map((key, value) {
      return MapEntry(key, value.cast<String, String>());
    });
  }

  String get title {
    return _localizationsValues[locale.languageCode]!["title"]!;
  }

  String get hello {
    return _localizationsValues[locale.languageCode]!["hello"]!;
  }

  String get pickTime {
    return _localizationsValues[locale.languageCode]!["pickTime"]!;
  }
}
