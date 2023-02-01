// 命名路由
import "package:flutter/material.dart";
import './pages/tabsRouterNamed.dart';
import './pages/views/Named1.dart';
import './pages/views/Named2.dart';
import './pages/views/Named3.dart';

void main() {
  // 入口方法
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "雷猴啊",
      debugShowCheckedModeBanner: false, // 消除右上角水印
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      // home: const TabsRouterNamed(),
      // 初始化路由
      initialRoute: "/",
      // 配置路由
      routes: {
        "/": (context) => const TabsRouterNamed(),
        "/Named1": (context) => const Named1(),
        "/Named2": (context) => const Named2(),
        "/Named3": (context) {
          return const Named3();
        }
      }
    );
  }
}


