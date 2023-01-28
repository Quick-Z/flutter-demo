// 静态列表2 ListView
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
      // padding: const EdgeInsets.all(10), // 内边距
      // padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      // reverse: true, // 反向排序
      children: <Widget>[
        const ListTile(title: Text("标题1")),
        const Divider(), // 分割线
        const ListTile(title: Text("标题2"), subtitle: Text("副标题")), // 二级标题
        const Divider(), // 分割线
        // 图标或图片。前置：leading, 后置：trailing
        const ListTile(
          leading: Icon(Icons.adb_outlined), // 前置图标
          title: Text("标题3"),
          // trailing: Text("后置"), // 后置图标，可以放文字
          trailing: Icon(Icons.chevron_right),
        ),
        const Divider(), // 分割线
        // 传图片
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"), // 因为 Image 不是常量函数，所以无法在前面使用 const 定义 children
          title: const Text("新闻标题1"),
          subtitle: const Text("二级标题内容, 二级标题内容二级标题内容二级标题内容二级标题内容, 二级标题内容")
        ),
        const Divider(), // 分割线
        ListTile(
          title: const Text("新闻标题2"),
          subtitle: const Text("二级标题内容, 二级标题内容二级标题内容二级标题内容二级标题内容, 二级标题内容"),
          trailing: Image.asset(
            "images/9t1.jpg"
          )
        ),
        const Divider(), // 分割线
        const ListTile(title: Text("标题6")),
      ]
    );
  }
}