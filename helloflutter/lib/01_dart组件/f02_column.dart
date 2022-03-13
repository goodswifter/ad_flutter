import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-12 17:29:48
/// Description  :
///

class ColumnTest extends StatelessWidget {
  const ColumnTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello Row')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            ProductItem("Apple1", "Macbook Product1",
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
            ProductItem("Apple2", "Macbook Product2",
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
            ProductItem("Apple3", "Macbook Product3",
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  const ProductItem(this.title, this.desc, this.imageURL, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontSize: 24)),
          Text(desc, style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Image.network(imageURL),
        ],
      ),
    );
  }
}
