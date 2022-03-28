///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/01_%E5%AF%BC%E8%88%AA%E8%BF%94%E5%9B%9E%E6%8B%A6%E6%88%AA/f01_will_pop_scope_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/02_%E6%95%B0%E6%8D%AE%E5%85%B1%E4%BA%AB/f01_inherited_widget_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/03_%E8%B7%A8%E7%BB%84%E4%BB%B6%E7%8A%B6%E6%80%81%E5%85%B1%E4%BA%ABProvider/f01_provider_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/04_%E9%A2%9C%E8%89%B2%E5%92%8C%E4%B8%BB%E9%A2%98/f01_color_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/04_%E9%A2%9C%E8%89%B2%E5%92%8C%E4%B8%BB%E9%A2%98/f02_theme_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/05_%E5%B1%80%E9%83%A8%E5%88%B7%E6%96%B0/f01_value_listenable_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/06_%E5%BC%82%E6%AD%A5UI%E6%9B%B4%E6%96%B0/f01_future_builder_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/06_%E5%BC%82%E6%AD%A5UI%E6%9B%B4%E6%96%B0/f02_stream_builder_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/07_%E5%AF%B9%E8%AF%9D%E6%A1%86/f01_dialog_all_page.dart';
import 'package:flutter_combat/pages/06_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/function_widgets_pages.dart';

import 'f06_function_widgets_names.dart';

abstract class FunctionWidgetsRoutes {
  static Map<String, WidgetBuilder> routes = {
  FunctionWidgetsNames.functionWidgets: ((_) => const FunctionWidgetsPage()),

  // ------------------- 01_导航返回拦截 -------------------
  FunctionWidgetsNames.willPopScopePage: ((_) => const WillPopScopePage()),

  // ------------------- 02_数据共享 -------------------
  FunctionWidgetsNames.inheritedWidgetPage: ((_) => const InheritedWidgetPage()),

  // ------------------- 03_跨组件状态共享Provider -------------------
  FunctionWidgetsNames.providerPage: ((_) => const ProviderPage()),

  // ------------------- 04_颜色和主题 -------------------
  FunctionWidgetsNames.colorPage: ((_) => const ColorPage()),
  FunctionWidgetsNames.themePage: ((_) => const ThemePage()),

  // ------------------- 05_局部刷新 -------------------
  FunctionWidgetsNames.valueListenablePage: ((_) => const ValueListenablePage()),

  // ------------------- 06_异步UI更新 -------------------
  FunctionWidgetsNames.futureBuilderPage: ((_) => const FutureBuilderPage()),
  FunctionWidgetsNames.streamBuilderPage: ((_) => const StreamBuilderPage()),

  // ------------------- 07_对话框 -------------------
  FunctionWidgetsNames.dialogAllPage: ((_) => const DialogAllPage()),
  
  };
}
