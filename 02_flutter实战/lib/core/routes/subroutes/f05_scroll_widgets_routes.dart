///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 
///
import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/01_SingleChildScrollView/f01_single_child_scroll_view_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/02_ListView/f01_list_view_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/02_ListView/f02_infinite_list_view_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/03_%E6%BB%9A%E5%8A%A8%E7%9B%91%E5%90%AC%E5%8F%8A%E6%8E%A7%E5%88%B6/f01_scroll_controller_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/03_%E6%BB%9A%E5%8A%A8%E7%9B%91%E5%90%AC%E5%8F%8A%E6%8E%A7%E5%88%B6/f02_scroll_notification_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/04_AnimatedList/f01_animated_list_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/05_GridView/f01_grid_view_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/06_PageView%E4%B8%8E%E9%A1%B5%E9%9D%A2%E7%BC%93%E5%AD%98/f01_page_view_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/07_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6%E5%AD%90%E9%A1%B9%E7%BC%93%E5%AD%98KeepAlive/f02_keep_alive_wrapper_page01.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/07_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6%E5%AD%90%E9%A1%B9%E7%BC%93%E5%AD%98KeepAlive/f03_keep_alive_wrapper_page02.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/08_TabBarView/f01_tab_bar_view_page01.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/08_TabBarView/f02_tab_bar_view_page02.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/09_CustomScrollView%E5%92%8CSlivers/f01_custom_scroll_view_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/09_CustomScrollView%E5%92%8CSlivers/f02_sliver_to_box_adapter_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/09_CustomScrollView%E5%92%8CSlivers/f03_sliver_persistent_header_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/10_%E8%87%AA%E5%AE%9A%E4%B9%89Sliver/f01_sliver_flexible_header_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/10_%E8%87%AA%E5%AE%9A%E4%B9%89Sliver/f02_sliver_persistent_header_to_box_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/11_%E5%B5%8C%E5%A5%97%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6NestedScrollView/f01_snap_app_bar_page01.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/11_%E5%B5%8C%E5%A5%97%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6NestedScrollView/f02_snap_app_bar_page02.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/11_%E5%B5%8C%E5%A5%97%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6NestedScrollView/f03_nested_tab_bar_view_page.dart';
import 'package:flutter_combat/pages/05_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/scroll_widgets_pages.dart';

import 'f05_scroll_widgets_names.dart';

abstract class ScrollWidgetsRoutes {
  static Map<String, WidgetBuilder> routes = {
  ScrollWidgetsNames.scrollWidgets: ((_) => const ScrollWidgetsPage()),

  // ------------------- 01_SingleChildScrollView -------------------
  ScrollWidgetsNames.singleChildScrollViewPage: ((_) => const SingleChildScrollViewPage()),

  // ------------------- 02_ListView -------------------
  ScrollWidgetsNames.listViewPage: ((_) => const ListViewPage()),
  ScrollWidgetsNames.infiniteListViewPage: ((_) => const InfiniteListViewPage()),

  // ------------------- 03_滚动监听及控制 -------------------
  ScrollWidgetsNames.scrollControllerPage: ((_) => const ScrollControllerPage()),
  ScrollWidgetsNames.scrollNotificationPage: ((_) => const ScrollNotificationPage()),

  // ------------------- 04_AnimatedList -------------------
  ScrollWidgetsNames.animatedListPage: ((_) => const AnimatedListPage()),

  // ------------------- 05_GridView -------------------
  ScrollWidgetsNames.gridViewPage: ((_) => const GridViewPage()),

  // ------------------- 06_PageView与页面缓存 -------------------
  ScrollWidgetsNames.pageViewPage: ((_) => const PageViewPage()),

  // ------------------- 07_可滚动组件子项缓存 -------------------
  ScrollWidgetsNames.automaticKeepAlivePage: ((_) => const AutomaticKeepAlive()),
  ScrollWidgetsNames.keepAliveWrapperPage01: ((_) => const KeepAliveWrapperPage01()),
  ScrollWidgetsNames.keepAliveWrapperPage02: ((_) => const KeepAliveWrapperPage02()),

  // ------------------- 08_TabBarView -------------------
  ScrollWidgetsNames.tabBarViewPage01: ((_) => const TabBarViewPage01()),
  ScrollWidgetsNames.tabBarViewPage02: ((_) => const TabBarViewPage02()),

  // ------------------- 09_CustomScrollView和Slivers -------------------
  ScrollWidgetsNames.customScrollViewPage: ((_) => const CustomScrollViewPage()),
  ScrollWidgetsNames.sliverToBoxAdapterPage: ((_) => const SliverToBoxAdapterPage()),
  ScrollWidgetsNames.sliverPersistentHeaderPage: ((_) => const SliverPersistentHeaderPage()),

  // ------------------- 10_自定义Sliver -------------------
  ScrollWidgetsNames.sliverFlexibleHeaderPage: ((_) => const SliverFlexibleHeaderPage()),
  ScrollWidgetsNames.sliverPersistentHeaderToBoxPage: ((_) => const SliverPersistentHeaderToBoxPage()),

  // ------------------- 11_嵌套可滚动组件 -------------------
  ScrollWidgetsNames.snapAppBarPage01: ((_) => const SnapAppBarPage01()),
  ScrollWidgetsNames.snapAppBarPage02: ((_) => const SnapAppBarPage02()),
  ScrollWidgetsNames.nestedTabBarViewPage: ((_) => const NestedTabBarViewPage()),
  };
}
