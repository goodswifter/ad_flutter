import 'package:flutter/material.dart';
import 'package:helloflutter/core/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 应用首页路由
      initialRoute: '/',
      theme: ThemeData(
          // primarySwatch: Colors.red, // 红色主题
          ),
      routes: AppRoutes.routes(),
    );
  }
}
