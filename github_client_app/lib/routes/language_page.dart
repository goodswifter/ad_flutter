///
/// Author       : zhongaidong
/// Date         : 2022-03-31 18:57:38
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/states/view_model_index.dart';
import 'package:provider/provider.dart';

class LanguageRoute extends StatelessWidget {
  const LanguageRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;
    var localeVM = Provider.of<LocaleViewModel>(context);
    var sl = S.of(context);
    Widget _wLanguageItem(String lan, value) {
      return ListTile(
        title: Text(
          lan,
          // 对APP当前语言进行高亮显示
          style: TextStyle(color: localeVM.locale == value ? color : null),
        ),
        trailing:
            localeVM.locale == value ? Icon(Icons.done, color: color) : null,
        onTap: () {
          // 此行代码会通知MaterialApp重新build
          localeVM.locale = value;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(sl.language)),
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
