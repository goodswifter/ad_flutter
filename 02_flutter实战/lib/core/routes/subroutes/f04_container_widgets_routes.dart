///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/container_widgets_page.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f01_transform_page.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f02_rotated_box_page.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f03_container_page.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f04_padding_margin_page.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f05_clip_page.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f06_fitted_box_page01.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f07_fitted_box_page02.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f08_scaffold_page.dart';
import 'package:flutter_combat/pages/04_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f09_scaffold_page02.dart';

import 'f04_container_widgets_names.dart';

abstract class ContainerWidgetsRoutes {
  static Map<String, WidgetBuilder> routes = {
    ContainerWidgetsNames.containerWidgets: ((_) =>
        const ContainerWidgetsPage()),

    // ------------------- 变换Transform -------------------
    ContainerWidgetsNames.transformPage: ((_) => const TransformPage()),

    // ------------------- RotatedBox -------------------
    ContainerWidgetsNames.rotatedBoxPage: ((_) => const RotatedBoxPage()),

    // ------------------- Container -------------------
    ContainerWidgetsNames.containerPage: ((_) => const ContainerPage()),

    // ------------------- Padding和Margin的区别 -------------------
    ContainerWidgetsNames.paddingMarginPage: ((_) => const PaddingMarginPage()),

    // ------------------- 裁剪Clip -------------------
    ContainerWidgetsNames.clipPage: ((_) => const ClipPage()),

    // ------------------- 空间适配01 -------------------
    ContainerWidgetsNames.fittedBoxPage01: ((_) => const FittedBoxPage01()),

    // ------------------- 空间适配02 -------------------
    ContainerWidgetsNames.fittedBoxPage02: ((_) => const FittedBoxPage02()),

    // ------------------- Scaffold01 -------------------
    ContainerWidgetsNames.scaffoldPage01: ((_) => const ScaffoldPage01()),

    // ------------------- Scaffold02 -------------------
    ContainerWidgetsNames.scaffoldPage02: ((_) => const ScaffoldPage02()),
  };
}
