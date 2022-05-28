///
/// Author       : zhongaidong
/// Date         : 2022-03-31 18:57:38
/// Description  :
///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_client_app/common/global.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/states/profile_controller.dart';

import '../models/app_theme.dart';

class ThemeChangeRoute extends StatelessWidget {
  ThemeChangeRoute({Key? key}) : super(key: key);

  final profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).theme)),
      body: ListView.builder(
        itemCount: Global.themes.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: Container(
                color: Global.themes[index],
                height: 40,
              ),
            ),
            onTap: () {
              // 获取当前主题类型
              ThemeType themeType = ThemeType.values.firstWhere(
                (e) => e.index == index,
                orElse: () => ThemeType.purple,
              );
              // 主题更新后，MaterialApp会重新build
              profileController.themeChange(themeType);
            },
          );
        },
      ),
    );
  }
}
