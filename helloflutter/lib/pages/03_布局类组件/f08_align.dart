///
/// Author       : zhongaidong
/// Date         : 2022-03-03 12:32:21
/// Description  :
///

import 'package:flutter/material.dart';

class AlignTest extends StatelessWidget {
  const AlignTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('对齐与相对定位Align')),
      body: Column(
        children: [
          Container(
            color: Colors.redAccent,
            child: const Align(
              alignment: Alignment.topRight,
              widthFactor: 3,
              heightFactor: 3,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
              color: Colors.redAccent,
              child: const Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: Alignment(-1, -1),
                child: FlutterLogo(
                  size: 60,
                ),
              )),
          const SizedBox(height: 20),
          Container(
            color: Colors.redAccent,
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: const Align(
                alignment: FractionalOffset(.5, 0),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
