import 'package:flutter/material.dart';
import './Replacemenet1.dart';

class Replacement4 extends StatefulWidget {
  const Replacement4({Key? key}) : super(key: key);

  @override
  State<Replacement4> createState() => _Replacement4State();
}

class _Replacement4State extends State<Replacement4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("页面4")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // 清空页面跳转历史数据，然后再跳转到指定页面
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (BuildContext context) {
                  return const Replacement1();
                }),
                (route) => false
              );
            },
            child: const Text("返回首页")
          )
        ],
      )
    );
  }
}
