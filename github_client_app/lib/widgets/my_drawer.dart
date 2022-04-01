///
/// Author       : zhongaidong
/// Date         : 2022-03-31 22:37:17
/// Description  : 抽屉菜单
///
import 'package:flutter/material.dart';
import 'package:github_client_app/common/const/resource.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/states/view_model_index.dart';
import 'package:provider/provider.dart';

import 'gm_avatar.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _wHeader(),
          Expanded(child: _buildMenus()),
        ],
      ),
    );
  }

  /// 构建菜单项
  Widget _buildMenus() {
    return Consumer<UserViewModel>(
      builder: (BuildContext context, UserViewModel userVM, Widget? child) {
        var sl = S.of(context);
        return ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.color_lens),
              title: Text(sl.theme),
              onTap: () => Navigator.pushNamed(context, "themes"),
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: Text(sl.language),
              onTap: () => Navigator.pushNamed(context, "language"),
            ),
            if (userVM.isLogin)
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
                            onPressed: () => Navigator.pop(context),
                          ),
                          TextButton(
                            child: Text(sl.yes),
                            onPressed: () {
                              // 该赋值语句会触发MaterialApp rebuild
                              userVM.user = null;
                              Navigator.pop(context);
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
  Widget _wHeader() {
    return Consumer<UserViewModel>(
      builder: (context, userVM, child) {
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
                    child: userVM.isLogin
                        ? gmAvatar(userVM.user!.avatarUrl!, width: 80)
                        : Image.asset(
                            R.assetsImgsAvatarDefaultPng,
                            width: 80,
                          ),
                  ),
                ),
                Text(
                  userVM.isLogin ? userVM.user!.login! : S.of(context).login,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          onTap: () {
            if (!userVM.isLogin) Navigator.pushNamed(context, 'login');
          },
        );
      },
    );
  }
}
