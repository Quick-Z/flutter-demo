import 'package:flutter/material.dart';

class Replacement3 extends StatefulWidget {
  const Replacement3({Key? key}) : super(key: key);

  @override
  State<Replacement3> createState() => _Replacement3State();
}

class _Replacement3State extends State<Replacement3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("页面3")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // 用此方法跳转到第四页，在第四页返回上一页时，就会跳过这页，直接返回到第二页
              Navigator.of(context).pushReplacementNamed("/Replacement4");
            },
            child: const Text("跳转到第4页")
          )
        ],
      )
    );
  }
}
