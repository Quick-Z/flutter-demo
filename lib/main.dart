// 基础顶部导航 TabBar
// TabBar 需要配合 TabBarView 一起使用
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
      debugShowCheckedModeBanner: false, // 消除右上角水印
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

// 第1步：with SingleTickerProviderStateMixin
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // 第2步：声明 TabController
  late TabController _tabController;

  // 生命周期函数：当组件初始化的时候会触发
  @override
  void initState() {
    super.initState();

    // 定义选项数量
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("雷猴"),
        bottom: TabBar(
          isScrollable: true, // 子项太多溢出时，允许滚动
          indicatorColor: Colors.yellow, // 指示器滑块颜色
          indicatorPadding: const EdgeInsets.all(5), // 指示器边距
          // indicatorSize: TabBarIndicatorSize.label, // 指示器的长度。label 和文字一样长。默认是 tab
          indicator: BoxDecoration( // 选中样式（很少使用）
            color: Colors.orange,
            borderRadius: BorderRadius.circular(14), // 圆角
          ),
          labelColor: Colors.white70, // 配置label文字颜色
          unselectedLabelColor: Colors.white24, // 配置未选中的label文字颜色
          labelStyle: const TextStyle( // label 样式
            fontSize: 16
          ),
          unselectedLabelStyle: const TextStyle( // 为选中label样式
            fontSize: 14
          ),
          controller: _tabController, // 数量
          tabs: const [
            Tab(child: Text("关注")),
            Tab(child: Text("热门")),
            Tab(child: Text("视频")),
            Tab(child: Text("其他1")),
            Tab(child: Text("其他2")),
            Tab(child: Text("其他3")),
            Tab(child: Text("其他4")),
            Tab(child: Text("其他5")),
            Tab(child: Text("其他6"))
          ]
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text("关注列表"),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("热门列表"),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("视频列表"),
              )
            ],
          ),
          const Text('其他1'),
          const Text('其他2'),
          const Text('其他3'),
          const Text('其他4'),
          const Text('其他5'),
          const Text('其他6')
        ]
      )
    );
  }
}




