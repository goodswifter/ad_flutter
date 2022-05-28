///
/// Author       : zhongaidong
/// Date         : 2022-05-16 21:41:07
/// Description  :
///
import 'package:flutter/material.dart';

class AppTheme {
  static Map mainColor = materialColor[ThemeType.purple.value]; // 默认颜色
  static getThemeData(ThemeType themeType) {
    mainColor = materialColor[themeType.value]; // 设置主题颜色
    ThemeData themData = ThemeData(
      // scaffoldBackgroundColor: Colors.red, // 页面的背景颜色

      primaryColor: Color(mainColor["primaryColor"]), // 主颜色
      primaryColorLight: Color(mainColor["primaryColorLight"]),
      // 按钮颜色
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        textTheme: ButtonTextTheme.normal,
        buttonColor: Color(mainColor["primaryColor"]),
      ),
      colorScheme: ColorScheme.light(
        primary: Color(mainColor["primaryColor"]),
        // 小部件的前景色（旋钮，文本，过分滚动边缘效果等）。
        secondary: Color(mainColor["primaryColorLight"]),
      ),

      // appbar样式
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
      ),

      // 图标样式
      iconTheme: IconThemeData(
        color: Color(mainColor["primaryColor"]),
      ),

      // 用于自定义对话框形状的主题。
      dialogTheme: const DialogTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontSize: 18.0,
          color: Colors.black87,
        ),
      ),
    );
    return themData;
  }
}

enum ThemeType {
  purple, // 默认紫色
  pink, // 粉色
  green, // 深粉色
  blue, // 蓝色
}

/// 提供五套可选主题色
const themeColors = [
  Colors.purple,
  Colors.pink,
  Colors.green,
  Colors.blue,
];

extension ThemeTypeExtension on ThemeType {
  /// Extensions can't declare instance fields
  // int? a;

  /// 定义颜色
  String get value => ['purple', 'pink', 'green', 'blue'][index];
}

Map materialColor = {
  // 主副颜色
  ThemeType.purple.value: {
    "primaryColor": 0xFF7B1FA2,
    "primaryColorLight": 0xFF9C27B0,
  },
  ThemeType.pink.value: {
    "primaryColor": 0xFFc2185b,
    "primaryColorLight": 0xFFd81b60,
  },
  ThemeType.green.value: {
    "primaryColor": 0xFF008000,
    "primaryColorLight": 0xFF008000,
  },
  ThemeType.blue.value: {
    "primaryColor": 0xFF1976D2,
    "primaryColorLight": 0xFF2196F3,
  },
};
