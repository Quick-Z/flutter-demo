// Text组件
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
    // TODO: implement build
    // Center 是剧中组件
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(87.5, 20, 87.5, 20),
      decoration: const BoxDecoration(
        color: Colors.yellow
      ),
      child: const Text("雷猴Flutter雷猴Flutter雷猴Flutter雷猴Flutter雷猴Flutter",
        // textAlign: TextAlign.right, // 文本右对齐。center是剧中
        overflow: TextOverflow.ellipsis, // ellipsis超出时显示省略号; clip; fade
        // 只显示1行
        maxLines: 1,
        style: TextStyle(
          color: Colors.blue, // 字体颜色
          fontSize: 20, // 字号大小
          fontWeight: FontWeight.w900, // 文本重量
          fontStyle: FontStyle.italic, // 倾斜字体
          letterSpacing: 2, // 字间距
          decoration: TextDecoration.underline, // 装饰线。underline 下划线
          decorationColor: Colors.pink, // 装饰线颜色
          decorationStyle: TextDecorationStyle.dashed, // 装饰线样式 dashed 虚线
        )
      )
    );
  }
}
