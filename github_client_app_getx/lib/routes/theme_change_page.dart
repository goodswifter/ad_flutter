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

class ThemeChangeRoute extends StatelessWidget {
  ThemeChangeRoute({Key? key}) : super(key: key);

  final profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).theme)),
      body: ListView(
        // 显示主题色块
        children: Global.themes.map((e) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: Container(
                color: e,
                height: 40,
              ),
            ),
            onTap: () {
              // 主题更新后，MaterialApp会重新build
              profileController.themeChange(e);
            },
          );
        }).toList(),
      ),
    );
  }
}
