// 图片组件 圆形图片1
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
    return Center(
      // 图片元素建议放在 Container 里，这样比较好控制
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // 背景图
          image: const DecorationImage(
            image: NetworkImage("https://cdn2.thecatapi.com/images/VZ3qFLIe3.jpg"),
            fit: BoxFit.cover, // 超出会剪裁
          ),
          // 设置圆角
          borderRadius: BorderRadius.circular(75)
        ),
      )
    );
  }
}
