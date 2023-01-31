// 使用第三方插件
import "package:flutter/material.dart";
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

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
      title: "使用第三方插件",
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
        title: const Text("使用第三方插件")
      ),
      body: Text(
        "使用第三方插件",
        style: TextStyle(
          color: ColorUtil.color('#890e00') // 使用第三方库的工具
        )
      )
    );
  }
}




