import 'package:flutter/material.dart';
import '../views/Named1.dart';

class HomeRouterNamedPage2 extends StatefulWidget {
  const HomeRouterNamedPage2({Key? key}) : super(key: key);

  @override
  State<HomeRouterNamedPage2> createState() => _HomeRouterNamedPage2State();
}

class _HomeRouterNamedPage2State extends State<HomeRouterNamedPage2> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // 路由跳转
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Named1();
                      })
                  );
                },
                child: const Text("基础路由跳转 1")
            ),

            const SizedBox(height: 20),

            // 命名路由跳转
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Named2");
                },
                child: const Text("命名路由跳转 2")
            ),

            const SizedBox(height: 20),

            // 命名路由跳转，传值
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Named4", arguments: {
                    "title": "标题",
                    "aid": 20
                  });
                },
                child: const Text("命名路由跳转传值 4")
            )
          ],
        )
    );
  }
}
