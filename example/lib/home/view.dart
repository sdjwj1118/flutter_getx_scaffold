import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';

import 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  // 主视图
  Widget _buildView() {
    return <Widget>[
      ListTile(
        title: const Text("跟随系统"),
        onTap: () {
          GlobalService.to.changeThemeMode(ThemeMode.system);
        },
      ),
      ListTile(
        title: const Text("亮色主题"),
        onTap: () {
          GlobalService.to.changeThemeMode(ThemeMode.light);
        },
      ),
      ListTile(
        title: const Text("暗色主题"),
        onTap: () {
          GlobalService.to.changeThemeMode(ThemeMode.dark);
        },
      ),
    ].toListView(
      separator: const DividerX(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      id: 'home',
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("GetxScaffold"), elevation: 1),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
