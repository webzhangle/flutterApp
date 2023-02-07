/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-13 23:05:13
 * @LastEditors: zhangle
 * @LastEditTime: 2023-02-07 13:42:46
 */
import 'package:flutter/material.dart';

class UserInfor1 {
  String name;
  int age;
  UserInfor1({required this.name, required this.age});
}

class UserInforValueNotifier extends ValueNotifier<UserInfor1> {
  UserInforValueNotifier(UserInfor1 userInfor) : super(userInfor);
  void setName(String name) {
    value.name = name;
    notifyListeners(); // 通知
  }
}

class ShareDataWidget extends InheritedWidget {
  final UserInforValueNotifier data;
  final Widget child;
  ShareDataWidget({Key? key, required this.child, required this.data})
      : super(
          key: key,
          child: child,
        );

  static ShareDataWidget? of(BuildContext context) {
    // 通过of方法获取定义的数据
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return false;
  }
}
