import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/message.dart';
import './tabs/setting.dart';
import './tabs/user.dart';

class TabsFloatingActionButton extends StatefulWidget {
  const TabsFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<TabsFloatingActionButton> createState() => _TabsFloatingActionButtonState();
}

class _TabsFloatingActionButtonState extends State<TabsFloatingActionButton> {

  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    MessagePage(),
    SettingPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("雷猴")),
      // body: const Text("雷猴啊"),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blueAccent, // 激活项的颜色
        // iconSize: 35, // 设置图标尺寸
        currentIndex: _currentIndex, // 当前选中项
        onTap: (index) { // 点击事件
          // print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // 如果底部有4个或者4个以上的菜单需要配置此参数
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "用户"),
        ]
      ),
      // 浮动按钮
      floatingActionButton: Container(
        // 按钮尺寸
        width: 60,
        height: 60,
        // 调整按钮位置
        margin: const EdgeInsets.only(top: 4),
        // 设置圆形边框
        padding: const EdgeInsets.all(3),
        // 设置圆形按钮
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
        ),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.greenAccent : Colors.grey, // 设置浮动按钮颜色
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
          child: const Icon(Icons.add)
        ),
      ),
      // 浮动按钮的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}