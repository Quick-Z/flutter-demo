// 网格布局2 GridView.extent
import "package:flutter/material.dart";

void main() {
  // 入口方法
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("雷猴123")),
        body: MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      // 通过它可以快速创建横轴子元素为固定最大长度的GridView
      maxCrossAxisExtent: 120, // 配置元素最大长度，横轴子元素最大长度
      children: const [
        Icon(Icons.pedal_bike),
        Icon(Icons.home),
        Icon(Icons.ac_unit),
        Icon(Icons.search),
        Icon(Icons.settings),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.circle)
      ],
    );
  }
}