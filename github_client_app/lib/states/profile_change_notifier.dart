///
/// Author       : zhongaidong
/// Date         : 2022-03-30 12:38:49
/// Description  : 用户信息
///
import 'package:flutter/material.dart';
import 'package:github_client_app/common/global.dart';
import 'package:github_client_app/models/index.dart';

class ProfileChangeNotifier extends ChangeNotifier {
  Profile get profile => Global.profile;

  @override
  void notifyListeners() {
    // 保存Profile变更
    Global.saveProfile();
    // 通知依赖的Widget更新
    super.notifyListeners();
  }
}
