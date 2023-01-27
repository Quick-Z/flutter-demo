// 自定义Icon
// 需要设置 pubspec.yaml 的 fonts
import 'package:flutter/material.dart';
import "./12iconfontClass.dart";

void main() {
  // 入口方法
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("雷猴123")),
        body: const MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(IconFont.weixin),
        Icon(IconFont.pen),
        Icon(IconFont.book, size: 40, color: Colors.pink)
      ]
    );
  }
}