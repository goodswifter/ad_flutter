///
/// Author       : zhongaidong
/// Date         : 2022-03-18 14:09:03
/// Description  :
///

import 'package:flutter/material.dart';

import 'cart_model.dart';
import 'change_notifier_provider.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider')),
      body: Center(
        child: ChangeNotifierProvider<CartModel>(
          data: CartModel(),
          child: Builder(builder: (context) {
            return Column(
              children: [
                Builder(builder: (context) {
                  var cart = ChangeNotifierProvider.of<CartModel>(context);
                  print(cart);
                  // return Text("总价: ${cart.totalPrice}");
                  return const Text("总价: 0");
                }),
                Builder(builder: (context) {
                  print("ElevatedButton build"); // 在后面优化部分会用到
                  return ElevatedButton(
                    child: const Text("添加商品"),
                    onPressed: () {
                      // 给购物车中添加商品，添加后总价会更新
                      ChangeNotifierProvider.of<CartModel>(context)
                          .add(Item(20.0, 1));
                    },
                  );
                }),
              ],
            );
          }),
        ),
      ),
    );
  }
}
