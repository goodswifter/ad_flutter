///
/// Author       : zhongaidong
/// Date         : 2022-03-31 18:57:38
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:github_client_app/common/global.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/states/view_model_index.dart';
import 'package:provider/provider.dart';

class ThemeChangeRoute extends StatelessWidget {
  const ThemeChangeRoute({Key? key}) : super(key: key);

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
              Provider.of<ThemeViewModel>(context, listen: false).theme = e;
            },
          );
        }).toList(),
      ),
    );
  }
}
