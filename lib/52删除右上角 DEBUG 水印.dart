// 删除右上角 DEBUG 水印 debugShowCheckedModeBanner
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
      home: Scaffold(
          appBar: AppBar(title: const Text("雷猴")),
          body: const Text("雷猴")
      ),
    );
  }
}




