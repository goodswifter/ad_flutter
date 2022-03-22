///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 01 第一个Flutter应用
///
import 'package:flutter/material.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/01_%E5%8A%A8%E7%94%BB%E5%9F%BA%E6%9C%AC%E7%BB%93%E6%9E%84%E5%8F%8A%E7%8A%B6%E6%80%81%E7%9B%91%E5%90%AC/f01_scale_animation_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/01_%E5%8A%A8%E7%94%BB%E5%9F%BA%E6%9C%AC%E7%BB%93%E6%9E%84%E5%8F%8A%E7%8A%B6%E6%80%81%E7%9B%91%E5%90%AC/f02_animated_widget_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/01_%E5%8A%A8%E7%94%BB%E5%9F%BA%E6%9C%AC%E7%BB%93%E6%9E%84%E5%8F%8A%E7%8A%B6%E6%80%81%E7%9B%91%E5%90%AC/f03_animated_builder_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/01_%E5%8A%A8%E7%94%BB%E5%9F%BA%E6%9C%AC%E7%BB%93%E6%9E%84%E5%8F%8A%E7%8A%B6%E6%80%81%E7%9B%91%E5%90%AC/f04_animated_builder_page02.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/01_%E5%8A%A8%E7%94%BB%E5%9F%BA%E6%9C%AC%E7%BB%93%E6%9E%84%E5%8F%8A%E7%8A%B6%E6%80%81%E7%9B%91%E5%90%AC/f05_animation_listener_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/02_%E8%87%AA%E5%AE%9A%E4%B9%89%E8%B7%AF%E7%94%B1%E5%88%87%E6%8D%A2%E5%8A%A8%E7%94%BB/f01_custom_route_animation_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/02_%E8%87%AA%E5%AE%9A%E4%B9%89%E8%B7%AF%E7%94%B1%E5%88%87%E6%8D%A2%E5%8A%A8%E7%94%BB/f02_page_route_builder_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/03_hero%E5%8A%A8%E7%94%BB/f01_custom_hero_animation_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/03_hero%E5%8A%A8%E7%94%BB/f02_hero_animation_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/03_hero%E5%8A%A8%E7%94%BB/f03_hero_animation_page02.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/04_%E4%BA%A4%E7%BB%87%E5%8A%A8%E7%94%BB/f01_stagger_animation_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/05_%E5%8A%A8%E7%94%BB%E5%88%87%E6%8D%A2%E7%BB%84%E4%BB%B6/f01_animated_switcher_counter_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/05_%E5%8A%A8%E7%94%BB%E5%88%87%E6%8D%A2%E7%BB%84%E4%BB%B6/f02_animated_switcher_push_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/05_%E5%8A%A8%E7%94%BB%E5%88%87%E6%8D%A2%E7%BB%84%E4%BB%B6/f03_slide_transition_x_page.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/animation_page.dart';

import 'f08_animation_names.dart';

abstract class AnimationRoutes {
  static Map<String, WidgetBuilder> routes = {
    AnimationNames.animation: ((_) => const AnimationPage()),

    // ------------------- 01_动画基本结构及状态监听 -------------------
    AnimationNames.scaleAnimationPage: ((_) => const ScaleAnimationPage()),
    AnimationNames.animatedWidgetPage: ((_) => const AnimatedWidgetPage()),
    AnimationNames.animatedBuilderPage: ((_) => const AnimatedBuilderPage()),
    AnimationNames.animatedBuilderPage02: ((_) =>
        const AnimatedBuilderPage02()),
    AnimationNames.animationListenerPage: ((_) =>
        const AnimationListenerPage()),

    // ------------------- 02_自定义路由切换动画 -------------------
    AnimationNames.customRouteAnimationPage: ((_) =>
        const CustomRouteAnimationPage()),
    AnimationNames.pageRouteBuilderPage: ((_) => const PageRouteBuilderPage()),

    // ------------------- 03_hero动画 -------------------
    AnimationNames.customHeroAnimationPage: ((_) =>
        const CustomHeroAnimationPage()),
    AnimationNames.heroAnimationPage: ((_) => const HeroAnimationPage()),
    AnimationNames.heroAnimationPage02: ((_) => const HeroAnimationPage02()),

    // ------------------- 04_交织动画 -------------------
    AnimationNames.staggerAnimationPage: ((_) => const StaggerAnimationPage()),

    // ------------------- 05_切换动画组件 -------------------
    AnimationNames.animatedSwitcherCounterPage: ((_) => const AnimatedSwitcherCounterPage()),
    AnimationNames.animatedSwitcherPushPage: ((_) => const AnimatedSwitcherPushPage()),
    AnimationNames.slideTransitionXPage: ((_) => const SlideTransitionXPage()),
    
  };
}
