import 'package:flutter/material.dart';

class Named2 extends StatefulWidget {
  const Named2({Key? key}) : super(key: key);

  @override
  State<Named2> createState() => _Named2State();
}

class _Named2State extends State<Named2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("命名路由2")
      ),
      body: Container(
        child: Column(
          children: [
            const Text("命名路由2"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Named3");
              },
              child: const Text("跳转到Named3")
            )
          ],
        )
      )
    );
  }
}
