///
/// Author       : zhongaidong
/// Date         : 2022-03-31 18:57:38
/// Description  :
///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/states/profile_controller.dart';

class LanguageRoute extends StatelessWidget {
  LanguageRoute({Key? key}) : super(key: key);

  final profileController = Get.put(ProfileController());
  final profileState = Get.find<ProfileController>().state;

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;
    var sl = S.of(context);
    Widget _wLanguageItem(String lan, value) {
      return GetBuilder<ProfileController>(
        builder: (profileCtrl) {
          return ListTile(
            title: Text(
              lan,
              // 对APP当前语言进行高亮显示
              style: TextStyle(
                  color: profileState.profile.locale == value ? color : null),
            ),
            trailing: profileState.profile.locale == value
                ? Icon(Icons.done, color: color)
                : null,
            onTap: () {
              // 此行代码会通知MaterialApp重新build
              profileCtrl.localeChange(value);
            },
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(sl.language),
      ),
      body: ListView(
        children: [
          _wLanguageItem("中文简体", "zh_CN"),
          _wLanguageItem("English", "en"),
          _wLanguageItem(sl.auto, null),
        ],
      ),
    );
  }
}
