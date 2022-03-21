import 'package:flutter/material.dart';

class FlexExpandedTest extends StatelessWidget {
  const FlexExpandedTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var redBox = Container(
      height: 30.0,
      color: Colors.red,
    );
    var greenBox = Container(
      height: 30.0,
      color: Colors.green,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('弹性布局')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          // Flex的两个子widget按1：2来占据水平空间
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 1,
                child: redBox,
              ),
              Expanded(
                flex: 2,
                child: greenBox,
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
          SizedBox(
            height: 100,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  flex: 2,
                  child: redBox,
                ),
                const Spacer(flex: 1),
                Expanded(
                  flex: 1,
                  child: greenBox,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
