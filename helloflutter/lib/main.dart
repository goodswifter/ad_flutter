import 'package:flutter/material.dart';
import 'package:helloflutter/01_dart%E7%BB%84%E4%BB%B6/f02_column.dart';
import 'package:helloflutter/06_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f02_new_route01.dart';
import 'package:helloflutter/06_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f03_tip_route.dart';
import 'package:helloflutter/06_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f04_echo_route.dart';
import 'package:helloflutter/07_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/f03_column_test.dart';
import 'package:helloflutter/07_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/f04_flex_expanded_test.dart';
import 'package:helloflutter/07_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/f07_stack_positioned.dart';
import 'package:helloflutter/07_%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/f09_layout_builder.dart';
import 'package:helloflutter/08_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f02_rotated_box.dart';
import 'package:helloflutter/08_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f03_padding_margin.dart';
import 'package:helloflutter/08_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6/f07_fitted_box02.dart';
import 'package:helloflutter/10_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6Scaffold/f03_scaffold02.dart';
import 'package:helloflutter/11_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/f03_infinite_list_view.dart';
import 'package:helloflutter/11_%E5%8F%AF%E6%BB%9A%E5%8A%A8%E7%BB%84%E4%BB%B6/f05_scroll_notification.dart';

import '01_dart组件/f04_counter.dart';
import '02_StatelessWidget生命周期/f01_stateless_first.dart';
import '03_StatefulWidget生命周期/f01_stateful_first.dart';
import '04_基础组件/f01_text_test.dart';
import '04_基础组件/f02_focos.dart';
import '04_基础组件/f04_linear_progress_indicator.dart';
import '04_基础组件/f05_circular_progress_indicator.dart';
import '04_基础组件/f06_state.dart';
import '05_状态管理/f01_state_manager01.dart';
import '05_状态管理/f02_state_manager02.dart';
import '05_状态管理/f03_state_manager03.dart';
import '06_路由管理/f01_route_manage_home_page.dart';
import '07_布局类组件/f02_center_test.dart';
import '07_布局类组件/f01_multi_constraint.dart';
import '07_布局类组件/f05_wrap_test.dart';
import '07_布局类组件/f06_flow_test.dart';
import '07_布局类组件/f08_align.dart';
import '07_布局类组件/f10_after_layout.dart';
import '08_容器类组件/f01_transform.dart';
import '08_容器类组件/f03_container.dart';
import '08_容器类组件/f05_clip.dart';
import '08_容器类组件/f06_fitted_box.dart';
import '09_布局约束/layout_constraint.dart';
import '10_容器类组件Scaffold/f01_scaffold.dart';
import '11_可滚动组件/f01_single_child_scroll_view.dart';
import '11_可滚动组件/f02_list_view01.dart';
import '11_可滚动组件/f04_scroll_controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      theme: ThemeData(
        // primaryColor: const Color.fromARGB(255, 68, 255, 77),
        primarySwatch: Colors.red,
      ),
      // routes: {
      //   'new_page': (_) => const NewRoute01(),
      //   '/': (_) => const CenterTest(),
      //   'tip_page': (context) => TipRoute(
      //       text: ModalRoute.of(context)!.settings.arguments as String),
      //   'echo_page': (context) => const EchoRoute()
      // },
      home: const ScrollNotificationTest(),
    );
  }
}
