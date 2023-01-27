// 内置Icon组件
import 'package:flutter/material.dart';

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
        Icon(Icons.abc),
        Icon(Icons.home, size: 40, color: Colors.red),
        Icon(Icons.search),
        Icon(Icons.settings),
        Icon(Icons.personal_injury_outlined),
        Icon(Icons.category),
        Icon(Icons.shop),
        Icon(Icons.bluetooth),
      ]
    );
  }
}