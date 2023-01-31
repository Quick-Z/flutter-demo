// 顶部导航 AppBar
import "package:flutter/material.dart";

void main() {
  // 入口方法
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "雷猴啊",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      // home: HomePage(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print("左侧按钮图标");
          },
          icon: const Icon(Icons.menu),
        ),
        backgroundColor: Colors.lightBlue, // 配置顶部背景色
        title: const Text("雷猴"),
        actions: [ // 配置右侧按钮图标
          IconButton(
            onPressed: () {
              print("搜索");
            },
            icon: const Icon(Icons.search)
          ),
          IconButton(
            onPressed: () {
              print("更多");
            },
            icon: const Icon(Icons.more_horiz)
          )
        ]
      ),
      body: const Text("雷猴")
    );
  }
}



