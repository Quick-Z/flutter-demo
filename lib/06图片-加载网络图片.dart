// 图片组件 Image
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
    // TODO: implement build
    return Center(
      // 图片元素建议放在 Container 里，这样比较好控制
      child: Container(
        width: 300,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.yellow
        ),
        // 加载远程图片
        child: Image.network(
          "https://cdn2.thecatapi.com/images/VZ3qFLIe3.jpg",
          // scale: 2, // 图片缩放
          // alignment: Alignment.centerLeft, // 对齐方式

          // BoxFit.fill 全图显示，图片会被拉伸，并充满父容器
          // BoxFit.contain 全图显示，显示原比例，可能会有空隙
          // BoxFit.cover 显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）
          // BoxFit.fitWidth 宽度充满（横屏充满），显示可能拉伸，可能裁切
          // BoxFit.fitHeight 高度充满（竖向充满），显示可能拉伸，可能裁切
          // BoxFit.scaleDown 效果和 contain 差不多，但是次属性不允许显示超过源图片大小，可小不可大
          // fit: BoxFit.fill,

          // 平铺方式
          repeat: ImageRepeat.repeatX,
        )
      )
    );
  }
}
