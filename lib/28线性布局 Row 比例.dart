// 线性布局 Row 比例
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
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // return IconContainer(Icons.home, color: Colors.yellow);
    return Container(
      width: 300,
      height: 500,
      color: Colors.orange,
      child: Row( // 外部没有 Container，行是自适应的
        children: [
          Expanded(
            flex: 1,
            child: IconContainer(Icons.home), // 此时这个元素设置宽度是没有效果的
          ),
          Expanded(
              flex: 2,
              child: IconContainer(Icons.search, color: Colors.green)
          )
        ],
      )
    );
  }
}

// 自定义 Icon 容器
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  // IconContainer(this.icon, {Key? key, required this.color}): super(key: key);
  IconContainer(this.icon, {Key? key, this.color = Colors.red}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      color: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}