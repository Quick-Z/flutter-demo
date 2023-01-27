// 静态列表1 ListView
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
    return ListView(
      scrollDirection: Axis.vertical, // 排列方式。Axis.vertical 默认值，垂直； Axis.horizontal 水平,
      // padding：EdgelnsetsGeometry(10), // 内边距
      // reverse: true, // 反向排序
      children: const [
        ListTile(title: Text("标题")),
        Text("可以滑动的列表1"),
        SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表2"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表3"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表4"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表5"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表6"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),SizedBox(height: 20), // 占位盒子
        Text("可以滑动的列表"),















      ]
    );
  }
}