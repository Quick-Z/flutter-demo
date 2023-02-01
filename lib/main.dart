// 命名路由4 替换路由
import "package:flutter/material.dart";
import './routers/routers.dart';
import './pages/views/Replacemenet1.dart';
import './pages/views/Replacemenet2.dart';
import './pages/views/Replacemenet3.dart';
import './pages/views/Replacemenet4.dart';

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
      initialRoute: "/",
      routes: {
        "/": (context) => const Replacement1(),
        "/Replacement2": (context) => const Replacement2(),
        "/Replacement3": (context) => const Replacement3(),
        "/Replacement4": (context) => const Replacement4()
      }
    );
  }
}


