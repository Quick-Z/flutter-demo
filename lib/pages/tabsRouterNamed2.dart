import 'package:flutter/material.dart';
import './tabs/homeRouterNamed2.dart';
import './tabs/category.dart';
import './tabs/message.dart';
import './tabs/setting.dart';
import './tabs/user.dart';

class TabsRouterNamed2 extends StatefulWidget {
  const TabsRouterNamed2({Key? key}) : super(key: key);

  @override
  State<TabsRouterNamed2> createState() => _TabsRouterNamed2State();
}

class _TabsRouterNamed2State extends State<TabsRouterNamed2> {

  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeRouterNamedPage2(),
    CategoryPage(),
    MessagePage(),
    SettingPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1, // 底部阴影
        title: const Text("命名路由传值2")
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // SizedBox(height: 60),
            // 配置抽屉的头部
            Row(
              children: [
                Expanded(
                  child: UserAccountsDrawerHeader(
                    // 背景样式
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://www.itying.com/images/flutter/4.png"),
                        fit: BoxFit.cover
                      ),
                    ),
                    // 配置头像
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://www.itying.com/images/flutter/5.png"
                      ),
                    ),
                    currentAccountPictureSize: const Size.square(80.0), // 头像尺寸
                    // 其他头像
                    otherAccountsPictures: [
                      Image.network("https://www.itying.com/images/flutter/1.png"),
                      Image.network("https://www.itying.com/images/flutter/2.png"),
                      Image.network("https://www.itying.com/images/flutter/3.png")
                    ],
                    accountName: const Text('雷猴'), // 用户名
                    accountEmail: const Text('邮箱: 8888888@qq.com') // 邮箱
                  ),
                  // 用 Flutter 提供的用户信息组件
                )
              ]
            ),
            // 抽屉内容
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person)
              ),
              title: Text("个人中心"),
            ),
            const Divider(), // 分割线
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings)
              ),
              title: Text("系统设置"),
            )
          ],
        )
      ),
      endDrawer: const Drawer(
        child: Text("右侧侧边栏")
      ),
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
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "首页", activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: "分类", activeIcon: Icon(Icons.category)),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: "消息", activeIcon: Icon(Icons.message)),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "设置", activeIcon: Icon(Icons.settings)),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "用户", activeIcon: Icon(Icons.person)),
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