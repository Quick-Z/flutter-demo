// 弹性布局 Flex
import "package:flutter/material.dart";

void main() {
  // 入口方法
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("雷猴123")),
        body: MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network("https://www.itying.com/images/flutter/2.png", fit: BoxFit.cover)
              )
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 180,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          child: Image.network("https://www.itying.com/images/flutter/3.png", fit: BoxFit.cover)
                        )
                    ),
                    // 间距
                    const SizedBox(height: 5),
                    Expanded(
                        flex: 2,
                        child: Image.network("https://www.itying.com/images/flutter/4.png", fit: BoxFit.cover)
                    )
                  ],
                )
              )
            )
          ]
        )
      ],
    );
  }
}
