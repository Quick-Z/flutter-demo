// 主题色
import 'package:flutter/material.dart';

void main() {
  // 入口方法
  runApp(
    MaterialApp(
      // 主题
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 主题颜色
        appBarTheme: const AppBarTheme(
          centerTitle: true, // 所有标题都剧中
        )
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("雷猴123")),
      ),
    )
  );
}
