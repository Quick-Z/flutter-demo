import 'package:flutter/material.dart';

void main() {
  // Center 是剧中组件
  // runApp(const Center(
  //   child: Text("雷猴 Flutter",
  //       textDirection: TextDirection.ltr,
  //       style: TextStyle(
  //           // 字体颜色
  //           // color: Colors.red
  //           color: Color.fromRGBO(244, 244, 123, 1),
  //           // 字号
  //           fontSize: 40)),
  // ));

  // MaterialApp 是根组件
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("雷猴Flutter")),
          body: const MyApp())));
}

// 自定义组件，无状态组件
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // throw UnimplementedError();
//     return const Center(
//         child: Text("雷猴啊，我是一个自定义组件",
//             textDirection: TextDirection.ltr, // 从左到右排
//             style: TextStyle(
//                 color: Color.fromRGBO(144, 4, 123, 1), fontSize: 40)));
//   }
// }

// 有状态组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("雷猴啊，我是一个自定义有状态组件",
            textDirection: TextDirection.ltr, // 从左到右排
            style: TextStyle(
                color: Color.fromRGBO(144, 4, 123, 1), fontSize: 40)));
  }
}
