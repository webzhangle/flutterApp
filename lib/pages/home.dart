/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 15:21:36
 * @LastEditors: zhangle
 * @LastEditTime: 2023-02-07 12:22:55
 */
import 'package:flutter/material.dart';
import 'package:app/pages/ui/index.dart';
import 'package:app/pages/api/index.dart';
import 'package:app/pages/project/index.dart';
import 'package:app/components/basics/IconFont/index.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = '';
  int currentIndex = 0;
  void onChangePage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  var pages = [UiIndex(), ApiIndex(),Project()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),

          ///导航栏标题
          centerTitle: true,

          ///导航栏标题居中显示（IOS默认居中，Android默认靠左）
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onChangePage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(IconFont.hot),
                label: '组件',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconFont.api),
                label: '接口',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconFont.hot),
                label: '项目',
              ),
            ]));
  }
}
