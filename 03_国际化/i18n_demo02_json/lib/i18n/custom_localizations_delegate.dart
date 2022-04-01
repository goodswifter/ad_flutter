///
/// Author       : zhongaidong
/// Date         : 2022-03-29 09:12:32
/// Description  : 自定义文本相关的代理
///
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'custom_localizations.dart';

class CustomLocalizationsDelegate
    extends LocalizationsDelegate<CustomLocalizations> {
  static CustomLocalizationsDelegate delegate = CustomLocalizationsDelegate();

  /// 用于当前环境的Locale，是否在我们支持的语言范围
  @override
  bool isSupported(Locale locale) {
    final languageCodes = CustomLocalizations.supportedLocales
        .map((loc) => loc.languageCode)
        .toList();
    return languageCodes.contains(locale.languageCode);
  }

  /// 当Locale发生改变时(语言环境), 加载对应的ADLocalizations资源
  @override
  Future<CustomLocalizations> load(Locale locale) async {
    CustomLocalizations customLocalizations = CustomLocalizations(locale);
    await customLocalizations.loadi18nJSON();
    return customLocalizations;
  }

  /// 重新加载数据时, 是否重新加载国际化文件, 一般不需要
  @override
  bool shouldReload(covariant LocalizationsDelegate old) => false;
}
