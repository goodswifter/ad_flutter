///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 01 第一个Flutter应用
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/02_%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/base_widgets_page.dart';
import 'package:flutter_combat/pages/02_%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/f01_text_page.dart';
import 'package:flutter_combat/pages/02_%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/f02_text_field_page.dart';
import 'package:flutter_combat/pages/02_%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/f03_form_page.dart';
import 'package:flutter_combat/pages/02_%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/f04_linear_progress_indicator_page.dart';
import 'package:flutter_combat/pages/02_%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/f05_circular_progress_indicator_page.dart';
import 'package:flutter_combat/pages/02_%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/f06_get_state_object_page.dart';

import 'f02_base_widgets_names.dart';

abstract class BaseWidgetsRoutes {
  static Map<String, WidgetBuilder> routes = {
    BaseWidgetsNames.baseWidgets: ((_) => const BaseWidgetsPage()),

    // ------------------- 文本 -------------------
    BaseWidgetsNames.textPage: ((_) => const TextPage()),

    // ------------------- 文本框 -------------------
    BaseWidgetsNames.textFieldPage: ((_) => const TextFieldPage()),

    // ------------------- 表单 -------------------
    BaseWidgetsNames.formPage: ((_) => const FormPage()),

    // ------------------- 直线进度指示器 -------------------
    BaseWidgetsNames.linearProgressIndicatorPage: ((_) =>
        const LinearProgressIndicatorPage()),

    // ------------------- 圆形进度指示器 -------------------
    BaseWidgetsNames.circularProgressIndicatorPage: ((_) =>
        const CircularProgressIndicatorPage()),

    // ------------------- 获取State对象 -------------------
    BaseWidgetsNames.getStateObjectPage: ((_) => const GetStateObjectPage()),
  };
}
