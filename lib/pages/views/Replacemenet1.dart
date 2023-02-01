import 'package:flutter/material.dart';

class Replacement1 extends StatefulWidget {
  const Replacement1({Key? key}) : super(key: key);

  @override
  State<Replacement1> createState() => _Replacement1State();
}

class _Replacement1State extends State<Replacement1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("页面1")),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/Replacement2");
        },
        child: const Text("跳转下一页 2")
      )
    );
  }
}
