///
/// Author       : zhongaidong
/// Date         : 2022-03-31 18:57:38
/// Description  :
///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/states/profile_controller.dart';
import 'package:intl/intl.dart';

class LanguageRoute extends StatelessWidget {
  LanguageRoute({Key? key}) : super(key: key);

  final List<String> names = ['中文简体', 'English', S.current.auto];
  final List lans = ['zh_CN', 'en', null];

  final profileController = Get.put(ProfileController());
  final profileState = Get.find<ProfileController>().state;

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;
    // var sl = S.of(context);
    var sl = S.current;
    // String  a = Intl.message('auto');
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

    List<Widget> lists = [];
    for (var i = 0; i < names.length; i++) {
      lists.add(_wLanguageItem(names[i], lans[i]));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(sl.language),
      ),
      body: ListView(children: lists),
    );
  }
}
