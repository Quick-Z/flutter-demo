import 'package:flutter/material.dart';

// 其他页面跳转到此页，进行命名路由传值
class Named4 extends StatefulWidget {
  final Map arguments;
  const Named4({Key? key, required this.arguments}) : super(key: key);

  @override
  State<Named4> createState() => _Named4State();
}

class _Named4State extends State<Named4> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Named4")
      ),
      body: Center(
        child: Text("${widget.arguments}"),
      )
    );
  }
}

