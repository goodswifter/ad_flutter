///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 01 第一个Flutter应用
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/01_%E7%BB%84%E5%90%88%E7%8E%B0%E6%9C%89%E7%BB%84%E4%BB%B6/f01_gradient_button_page.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/02_%E7%BB%84%E5%90%88%E5%AE%9E%E4%BE%8B/f01_turn_box_page.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/03_CustomPaint%E5%92%8CCanvas/f01_custom_paint_page.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/03_CustomPaint%E5%92%8CCanvas/f02_paint_arc_page.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/04_%E8%87%AA%E7%BB%98%E5%AE%9E%E4%BE%8B:%E5%9C%86%E5%BD%A2%E8%83%8C%E6%99%AF%E6%B8%90%E5%8F%98%E8%BF%9B%E5%BA%A6%E6%9D%A1/f01_gradient_circular_progress_page.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/05_%E8%87%AA%E7%BB%98%E7%BB%84%E4%BB%B6:%20CustomCheckbox/f01_custom_checkbox_page.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/05_%E8%87%AA%E7%BB%98%E7%BB%84%E4%BB%B6:%20CustomCheckbox/f02_done_widget_page.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/06_%E6%B0%B4%E5%8D%B0%E5%AE%9E%E4%BE%8B:%E6%96%87%E6%9C%AC%E7%BB%98%E5%88%B6%E4%B8%8E%E7%A6%BB%E5%B1%8F%E6%B8%B2%E6%9F%93/f01_watermark_page01.dart';
import 'package:flutter_combat/pages/09_%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6/custom_widget_page.dart';

import 'f09_custom_widget_names.dart';

abstract class CustomWidgetRoutes {
  static Map<String, WidgetBuilder> routes = {
    CustomWidgetNames.customWidget: ((_) => const CustomWidgetPage()),

    // ------------------- 01_组合现有组件 -------------------
    CustomWidgetNames.gradientButtonPage: ((_) => const GradientButtonPage()),

    // ------------------- 02_组合实例 -------------------
    CustomWidgetNames.turnBoxPage: ((_) => const TurnBoxPage()),

    // ------------------- 03_CustomPaint和Canvas -------------------
    CustomWidgetNames.customPaintPage: ((_) => const CustomPaintPage()),
    CustomWidgetNames.paintArcPage: ((_) => const PaintArcPage()),

    // ------------------- 04_自绘实例 -------------------
    CustomWidgetNames.gradientCircularProgressPage: ((_) =>
        const GradientCircularProgressPage()),

    // ------------------- 05_自绘实例 -------------------
    CustomWidgetNames.customCheckboxPage: ((_) => const CustomCheckboxPage()),
    CustomWidgetNames.doneWidgetPage: ((_) => const DoneWidgetPage()),

    // ------------------- 06_水印实例 -------------------
    CustomWidgetNames.watermarkPage01: ((_) => const WatermarkPage01()),
  };
}
