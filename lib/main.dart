// Container组件
import 'package:flutter/material.dart';

void main() {
  // 入口方法
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("雷猴123")),
        body: MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Center 是剧中组件
    return Center(
      // Container 相当于 div
      child: Container(
        // 配置Container容器内元素的定位
        alignment: Alignment.bottomRight, // Alignment.center、topLeft、bottomRight 等等
        // 容器的宽高
        width: 200,
        height: 200,
        // 容器的样式
        decoration: BoxDecoration(
          color: Colors.red, // 背景颜色
          border: Border.all( // 配置边框
            color: Colors.blue, // 边框颜色
            width: 2, // 边框宽度
          ),
          borderRadius: BorderRadius.circular(10), // 配置圆角
          boxShadow: const [ // 配置阴影效果
            BoxShadow(
              color: Colors.yellow, // 阴影颜色
              blurRadius: 20.0
            )
          ],
          // LinearGradient 线性渐变
          gradient: const LinearGradient(
            colors: [
              Colors.red, Colors.yellow
            ]
          ),
          // RadialGradient 径向渐变
          // gradient: const RadialGradient(
          //   colors: [
          //     Colors.red, Colors.yellow
          //   ]
          // ),
        ),
        // 子元素
        child: const Text("雷猴Flutter",
          style: TextStyle(
            color: Colors.white, // 字体颜色
            fontSize: 20, // 字号大小
          )
        )
      ),
    );
  }
  
}