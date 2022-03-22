///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 01 第一个Flutter应用
///

import 'package:flutter/material.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/01_%E8%AE%A1%E6%95%B0%E5%99%A8%E5%BA%94%E7%94%A8/f01_counter_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/02_Widget%20%E7%AE%80%E4%BB%8B/01_StatelessWidget%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F/f01_stateless_first_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/02_Widget%20%E7%AE%80%E4%BB%8B/01_StatelessWidget%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F/f02_stateless_second_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/02_Widget%20%E7%AE%80%E4%BB%8B/01_StatelessWidget%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F/f03_stateless_three_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/02_Widget%20%E7%AE%80%E4%BB%8B/02_StatefulWidget%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F/f01_stateful_first_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/02_Widget%20%E7%AE%80%E4%BB%8B/02_StatefulWidget%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F/f02_stateful_second_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/02_Widget%20%E7%AE%80%E4%BB%8B/02_StatefulWidget%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F/f03_stateful_three_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/03_%E7%8A%B6%E6%80%81%E7%AE%A1%E7%90%86/f01_state_manager_page01.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/03_%E7%8A%B6%E6%80%81%E7%AE%A1%E7%90%86/f02_state_manager_page02.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/03_%E7%8A%B6%E6%80%81%E7%AE%A1%E7%90%86/f03_state_manager_page03.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/04_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f01_route_manage_home_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/04_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f02_new_route_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/04_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f03_tip_route_page.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/04_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f04_echo_route_page.dart';
import 'f01_first_app_names.dart';
import 'package:helloflutter/pages/01_%E7%AC%AC%E4%B8%80%E4%B8%AAflutter%E5%BA%94%E7%94%A8/first_flutter_app_page.dart';

abstract class FirstAppRoutes {
  static Map<String, WidgetBuilder> routes = {
    FirstAppNames.firstFlutterApp: ((_) => const FirstFlutterAppPage()),

  // ------------------- 01_计数器应用 -------------------
  FirstAppNames.counterPage: ((_) => const CounterPage()),

  // ------------------- 02_Widget 简介 -------------------
  FirstAppNames.statelessFirstPage: ((_) => StatelessFirstPage()),
  FirstAppNames.statelessSecondPage: ((_) => StatelessSecondPage()),
  FirstAppNames.statelessThreePage: ((_) => StatelessThreePage()),
  FirstAppNames.statefulFirstPage: ((_) => StatefulFirstPage()),
  FirstAppNames.statefulSecondPage: ((_) => StatefulSecondPage()),
  FirstAppNames.statefulThreePage: ((_) => StatefulThreePage()),

  // ------------------- 03_状态管理 -------------------
  FirstAppNames.stateManagerPage01: ((_) => const StateManagerPage01()),
  FirstAppNames.stateManagerPage02: ((_) => const StateManagerPage02()),
  FirstAppNames.stateManagerPage03: ((_) => const StateManagerPage03()),

  // ------------------- 04_路由管理 -------------------
  FirstAppNames.routeManageHomePage: ((_) => const RouteManageHomePage()),
  FirstAppNames.newRoutePage: ((_) => const NewRoutePage()),
  FirstAppNames.tipRoutePage: ((_) => const TipRoutePage(text: 'text')),
  FirstAppNames.echoRoutePage: ((_) => const EchoRoutePage())
  };
}
