import 'package:flutter/material.dart';

class Replacement2 extends StatefulWidget {
  const Replacement2({Key? key}) : super(key: key);

  @override
  State<Replacement2> createState() => _Replacement2State();
}

class _Replacement2State extends State<Replacement2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("页面2")),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("返回上一页")
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Replacement3");
              },
              child: const Text("跳转下一页 3")
            ),
          ],
        )
    );
  }
}
