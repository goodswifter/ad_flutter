///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 03布局类组件
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/01_%E5%B8%83%E5%B1%80%E5%8E%9F%E7%90%86%E4%B8%8E%E7%BA%A6%E6%9D%9Fconstraints/f01_multi_constraint_page01.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/01_%E5%B8%83%E5%B1%80%E5%8E%9F%E7%90%86%E4%B8%8E%E7%BA%A6%E6%9D%9Fconstraints/f02_multi_constraint_page02.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/02_%E7%BA%BF%E6%80%A7%E5%B8%83%E5%B1%80Row%E5%92%8CColumn/f01_center_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/02_%E7%BA%BF%E6%80%A7%E5%B8%83%E5%B1%80Row%E5%92%8CColumn/f02_column_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/03_%E5%BC%B9%E6%80%A7%E5%B8%83%E5%B1%80/f01_flex_expanded_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/04_%E6%B5%81%E5%BC%8F%E5%B8%83%E5%B1%80/f01_wrap_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/04_%E6%B5%81%E5%BC%8F%E5%B8%83%E5%B1%80/f02_flow_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/05_%E5%B1%82%E5%8F%A0%E5%B8%83%E5%B1%80Stack%E5%92%8CPositioned/f01_stack_positioned_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/06_%E5%AF%B9%E9%BD%90%E4%B8%8E%E7%9B%B8%E5%AF%B9%E5%AE%9A%E4%BD%8DAlign/f01_align_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/07_LayoutBuilder%E5%92%8CAfterLayout/f01_layout_builder_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/07_LayoutBuilder%E5%92%8CAfterLayout/f02_after_layout_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/08_%E5%B8%83%E5%B1%80%E7%BA%A6%E6%9D%9FDemo/f01_layout_constraint_page.dart';
import 'package:flutter_combat/pages/03_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/layout_widgets_pages.dart';

import 'f03_layout_widgets_names.dart';

abstract class LayoutWidgetsRoutes {
  static Map<String, WidgetBuilder> routes = {
  LayoutWidgetsNames.layoutWidgets: ((_) => const LayoutWidgetsPage()),

  // ------------------- 01_布局原理与约束 -------------------
  LayoutWidgetsNames.multiConstraintPage01: ((_) => const MultiConstraintPage01()),
  LayoutWidgetsNames.multiConstraintPage02: ((_) => const MultiConstraintPage02()),

  // ------------------- 02_线性布局Row和Column -------------------
  LayoutWidgetsNames.centerPage: ((_) => const CenterPage()),
  LayoutWidgetsNames.columnPage: ((_) => const ColumnPage()),

  // ------------------- 03_弹性布局 -------------------
  LayoutWidgetsNames.flexExpandedPage: ((_) => const FlexExpandedPage()),

  // ------------------- 04_流式布局 -------------------
  LayoutWidgetsNames.wrapPage: ((_) => const WrapPage()),
  LayoutWidgetsNames.flowPage: ((_) => const FlowPage()),

  // ------------------- 05_层叠布局Stack和Positioned -------------------
  LayoutWidgetsNames.stackPositionedPage: ((_) => const StackPositionedPage()),

  // ------------------- 06_对齐与相对定位Align -------------------
  LayoutWidgetsNames.alignPage: ((_) => const AlignPage()),

  // ------------------- 07_LayoutBuilder和AfterLayout -------------------
  LayoutWidgetsNames.layoutBuilderPage: ((_) => const LayoutBuilderPage()),
  LayoutWidgetsNames.afterLayoutPage: ((_) => const AfterLayoutPage()),

  // ------------------- 08_布局约束Demo -------------------
  LayoutWidgetsNames.layoutConstraintPage: ((_) => const LayoutConstraintPage()),
  };
}
