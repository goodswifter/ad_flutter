import 'package:flutter/material.dart';

import '12_功能性组件/f12_functional_widget_header.dart';
import '13_事件处理与通知/event_handle_and_notification.dart';
import '13_事件处理与通知/event_handle_header.dart';

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
      home: EventHandleAndNotificationTest(),
    );
  }
}
