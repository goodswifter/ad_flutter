import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_client_app/common/global.dart';
import 'package:github_client_app/states/view_model_index.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';
import 'routes/home_page.dart';
import 'routes/language_page.dart';
import 'routes/login_page.dart';
import 'routes/theme_change_page.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ThemeViewModel()),
        ChangeNotifierProvider.value(value: UserViewModel()),
        ChangeNotifierProvider.value(value: LocaleViewModel()),
      ],
      child: Consumer2<ThemeViewModel, LocaleViewModel>(
          builder: (context, themeVM, localeVM, child) {
        return MaterialApp(
          theme: ThemeData(primarySwatch: themeVM.theme),
          onGenerateTitle: (context) => S.of(context).title,
          // 我们只支持美国英语和中文简体
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
            GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
            GlobalWidgetsLocalizations.delegate, // 指定默认的文本排列方向, 由左到右或由右到左
            S.delegate,
          ],
          locale: localeVM.getLocale(),
          // 注册路由表
          routes: <String, WidgetBuilder>{
            "login": (_) => const LoginRoute(),
            "themes": (_) => const ThemeChangeRoute(),
            "language": (_) => const LanguageRoute(),
          },
          home: const HomePage(),
          builder: EasyLoading.init(),
        );
      }),
    );
  }
}
