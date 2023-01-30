// 有状态组件 StatefulWidget
/**
 * 在 Flutter 中自定义组件其实就是一个类，这个类需要集成 StatlessWidget / StatefulWidget
 *
 * StatlessWidget 是无状态组件，状态不可变的 widget
 * StatefulWidget 是有状态组件，持有的状态可能在 widget 生命周期改变
 *
 * 通俗的讲，如果我们想改变页面中的数据的话，这个时候就需要用到 StatefulWidget
 */
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
        primarySwatch: Colors.orange
      ),
      // home: HomePage(),
      home: const HomePage(),
    );
  }
}

// 此时如果使用StatelessWidget，页面的值不会有所变化
// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//
//   int countNum = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("雷猴1234")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("$countNum", style: Theme.of(context).textTheme.headline1),
//             const SizedBox(height: 100),
//             ElevatedButton(
//               onPressed: (){
//                 countNum++;
//                 print(countNum);
//               },
//               child: const Text("增加")
//             )
//           ],
//         )
//       ),
//     );
//   }
// }


// 有状态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  int _numCount = 0;


  @override
  Widget build(BuildContext context) {

    print("build时执行$_numCount");

    return Scaffold(
      // 加上 const 后，重新build时就不会修改静态数据，能提升一点性能
      appBar: AppBar(title: const Text("雷猴Flutter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_numCount",
              style: Theme.of(context).textTheme.headline2
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: (){

                // 使用 setState 后，会重新渲染页面
                setState(() {
                  _numCount++;
                });
                print(_numCount);
              },
              child: const Text("增加")
            )
          ]
        )
      )
    );
  }
}