///
/// Author       : zhongaidong
/// Date         : 2022-03-30 13:03:23
/// Description  : APP语言状态
///
import 'dart:ui';

import 'profile_change_notifier.dart';

class LocaleViewModel extends ProfileChangeNotifier {
  // 获取当前用户的APP语言配置Locale类，如果为null，则语言跟随系统语言
  Locale? getLocale() {
    if (profile.locale == null) return null;
    if (profile.locale!.contains('_')) {
      var t = profile.locale!.split('_');
      return Locale(t[0], t[1]);
    }
    return Locale(profile.locale!);
  }

  // 获取当前Locale的字符串表示
  String? get locale => profile.locale;

  // 用户改变APP语言后，通知依赖项更新，新语言会立即生效
  set locale(String? locale) {
    if (locale != profile.locale) {
      profile.locale = locale;
      notifyListeners();
    }
  }
}
