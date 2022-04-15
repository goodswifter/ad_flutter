import 'package:flutter/material.dart';
import 'package:flutter_use/module/main/logic.dart';
import 'package:flutter_use/module/main/state.dart';
import 'package:get/get.dart';

import 'widget/side_navigation.dart';

class MainPage extends StatelessWidget {
  final MainLogic logic = Get.put(MainLogic());
  final MainState state = Get.find<MainLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(children: [
        ///侧边栏区域
        GetBuilder<MainLogic>(
          builder: (logic) {
            return SideNavigation(
              selectedIndex: state.selectedIndex,
              isUnfold: state.isUnfold,
              isScale: state.isScale,
              sideItems: state.itemList,
              //点击item
              onItem: (index) => logic.switchTap(index),
              //展开侧边栏
              onUnfold: (isUnfold) => logic.onUnfold(isUnfold),
              //缩放整体布局
              onScale: (isScale) => logic.onScale(isScale),
            );
          },
        ),

        ///Expanded占满剩下的空间
        Expanded(
          child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.pageList.length,
            itemBuilder: (context, index) => state.pageList[index],
            controller: state.pageController,
          ),
        )
      ]),
    );
  }
}
