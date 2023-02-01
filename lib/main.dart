// 命名路由3 抽离代码
import "package:flutter/material.dart";
import './routers/routers.dart';

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
      // 路由
      onGenerateRoute: onGenerateRoute
    );
  }
}


