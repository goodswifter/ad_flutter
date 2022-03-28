///
/// Author       : zhongaidong
/// Date         : 2022-03-07 22:04:53
/// Description  :
///

import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: .7,
      //  appBar: AppBar(title: const Text('name')),
      child: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          ListTile(
            leading: ClipOval(
              child: Image.asset(
                'assets/images/avatar.png',
                height: 80.0,
              ),
            ),
            title: const Text('zhongaidong'),
          ),
          const SizedBox(height: 20),
          const ListTile(leading: Icon(Icons.add), title: Text('Add account')),
          // const SizedBox(height: 10),
          const ListTile(
              leading: Icon(Icons.settings), title: Text('Manage accounts')),
        ]),
      ),
    );
  }
}
