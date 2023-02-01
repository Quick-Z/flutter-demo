import 'package:flutter/material.dart';

class Named3 extends StatefulWidget {
  const Named3({Key? key}) : super(key: key);

  @override
  State<Named3> createState() => _Named3State();
}

class _Named3State extends State<Named3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("命名路由3")
      ),
      body: const Text("命名路由3")
    );
  }
}
