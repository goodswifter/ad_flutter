import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:github_client_app/common/global.dart';
import 'package:github_client_app/states/profile_controller.dart';

import 'generated/l10n.dart';
import 'routes/home_page.dart';
import 'routes/language_page.dart';
import 'routes/login_page.dart';
import 'routes/theme_change_page.dart';

void main() async {
  await Global.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final profileController = Get.put(ProfileController());
  final profileState = Get.find<ProfileController>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (profileCtrl) {
        return GetMaterialApp(
          theme: profileState.theme,
          onGenerateTitle: (context) => S.of(context).title,
          // 我们只支持美国英语和中文简体
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
            GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
            GlobalWidgetsLocalizations.delegate, // 指定默认的文本排列方向, 由左到右或由右到左
            S.delegate,
          ],
          locale: profileState.locale, // 设置默认语言
          initialRoute: '/',
          // 注册路由表
          getPages: [
            GetPage(name: '/', page: () => const HomePage()),
            GetPage(name: '/login', page: () => const LoginRoute()),
            GetPage(name: '/themes', page: () => ThemeChangeRoute()),
            GetPage(name: '/language', page: () => LanguageRoute()),
          ],
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
