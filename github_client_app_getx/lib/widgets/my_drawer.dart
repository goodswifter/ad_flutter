///
/// Author       : zhongaidong
/// Date         : 2022-03-31 22:37:17
/// Description  : 抽屉菜单
///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_client_app/common/const/resource.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/states/profile_controller.dart';

import 'gm_avatar.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  final profileState = Get.find<ProfileController>().state;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _wHeader(context),
          Expanded(child: _buildMenus(context)),
        ],
      ),
    );
  }

  /// 构建菜单项
  Widget _buildMenus(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (profileCtrl) {
        var sl = S.of(context);
        return ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.color_lens),
              title: Text(sl.theme),
              onTap: () => Get.offAndToNamed('/themes'),
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: Text(sl.language),
              onTap: () => Get.offAndToNamed('/language'),
            ),
            Container(
              color: Theme.of(context).primaryColorLight,
              height: 50,
            ),
            if (profileState.isLogin)
              ListTile(
                leading: const Icon(Icons.power_settings_new),
                title: Text(sl.logout),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) {
                      // 退出账号前先弹二次确认窗
                      return AlertDialog(
                        content: Text(sl.logoutTip),
                        actions: [
                          TextButton(
                            child: Text(sl.cancel),
                            onPressed: () => Get.back(),
                          ),
                          TextButton(
                            child: Text(sl.yes),
                            onPressed: () {
                              // 该赋值语句会触发MaterialApp rebuild
                              profileCtrl.updateUser(null);
                              Get.offNamedUntil('/', (route) => false);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
          ],
        );
      },
    );
  }

  /// 构建抽屉菜单头部
  Widget _wHeader(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (profileCtrl) {
        return GestureDetector(
          child: Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.only(top: 40, bottom: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipOval(
                    // 如果已登录，则显示用户头像；若未登录，则显示默认头像
                    child: profileState.isLogin
                        ? gmAvatar(profileState.user!.avatarUrl!, width: 80)
                        : Image.asset(
                            R.assetsImgsAvatarDefaultPng,
                            width: 80,
                          ),
                  ),
                ),
                Text(
                  profileState.isLogin
                      ? profileState.user!.login!
                      : S.of(context).login,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          onTap: () {
            if (!profileState.isLogin) Get.toNamed('/login');
          },
        );
      },
    );
  }
}
