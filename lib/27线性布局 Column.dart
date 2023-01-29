// 线性布局 Column
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
      child: Column( // 外部没有 Container，行是自适应的
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // 主轴对齐方式
        crossAxisAlignment: CrossAxisAlignment.center, // 辅轴对齐方式，会根据外部容器的高度或者宽度去自动调节
        children: [
          IconContainer(Icons.home),
          IconContainer(Icons.search, color: Colors.green),
          IconContainer(Icons.account_balance_outlined, color: Colors.indigoAccent),
          // IconContainer(Icons.adb_outlined, color: Colors.brown)
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