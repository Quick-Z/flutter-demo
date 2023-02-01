import 'package:flutter/material.dart';

class Named1 extends StatefulWidget {
  const Named1({Key? key}) : super(key: key);

  @override
  State<Named1> createState() => _Named1State();
}

class _Named1State extends State<Named1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("命名路由1")
      ),
      body: const Text("命名路由1")
    );
  }
}
