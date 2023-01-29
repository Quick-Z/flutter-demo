// 弹性布局 Flex
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
    return Container(
      width: 300,
      height: 500,
      color: Colors.orange,
      child: Flex( // 外部没有 Container，行是自适应的
        // direction: Axis.vertical,
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1, // 自适应宽度
            child: IconContainer(Icons.home),
          ),
          IconContainer(Icons.search, color: Colors.green) // 固定宽度
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
      width: 80,
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