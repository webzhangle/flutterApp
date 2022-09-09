/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 15:11:37
 * @LastEditors: zhangle
 * @LastEditTime: 2022-08-04 23:36:08
 */
import 'package:app/pages/api/InheritedPage.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/ui/ButtonPage.dart';
import 'package:app/pages/ui/InputPage.dart';
import 'package:app/pages/ui/CheckboxPage.dart';
import 'package:app/pages/ui/RadioPage.dart';
import 'package:app/pages/ui/ToastPage.dart';
import 'package:app/pages/ui/DialogPage.dart';
import 'package:app/pages/ui/IconPage.dart';
import 'package:app/pages/ui/AnimationPage.dart';
import 'package:app/pages/ui/SliversPage.dart';

import 'package:app/pages/api/HttpRequest.dart';
import 'package:app/pages/api/SharedPreferencesPage.dart';
import 'package:app/pages/api/DeviceInfoPage.dart';
import 'package:app/pages/api/MediaQueryPage.dart';
import 'package:app/pages/api/AmapPage.dart';
import 'package:app/pages/api/WebviewPage.dart';
import 'package:app/pages/api/UrlLauncher.dart';
import 'package:app/pages/api/FutureBuilderPage.dart';
import 'package:app/pages/api/StreamBuilderPage.dart';
import 'package:app/pages/api/PermissionPage.dart';
class MyRouter {
  static String initialRoute = '/';
  // 路由注册表
  static Map routes = {
    '/': (context) => Home(),
    '/button': (context, {arguments}) => ButtonPage(title: '按钮页面', arguments:arguments),
    '/input': (context, {arguments}) => InputPage(title: '输入框页面', arguments:arguments),
    '/checkbox': (context, {arguments}) => CheckboxPage(title: '复选框框页面', arguments:arguments),
    '/radio': (context, {arguments}) => RadioPage(title: '复选框框页面', arguments:arguments),
    '/toast': (context, {arguments}) => ToastPage(title: 'toast页面', arguments:arguments),
    '/dialog': (context, {arguments}) => DialogPage(title: 'dialog页面', arguments:arguments),
    '/icon': (context, {arguments}) => IconPage(title: 'iconfont页面', arguments:arguments),
    '/animation': (context, {arguments}) => AnimationPage(title: 'Animation自定义动画页面', arguments:arguments),
    '/slivers': (context, {arguments}) => SliversPage(title: 'slivers的世界', arguments:arguments),


    '/http': (context, {arguments}) => HttpRequest(title: '网络请求', arguments:arguments),
    '/shared_preferences': (context, {arguments}) => SharedPreferencesClass(title: '存储', arguments:arguments),
    '/inherited': (context, {arguments}) => InheritedPage(title: '状态管理', arguments:arguments),
    '/device_info': (context, {arguments}) => DeviceInfo(title: '设备信息', arguments:arguments),
    '/mediaQuery': (context, {arguments}) => HapyMediaQuery(title: 'MediaQuery', arguments:arguments),
    '/amap': (context, {arguments}) => AmapPage(title: '高德地图', arguments:arguments),
    '/webview': (context, {arguments}) => WebviewPage(title: 'webview', arguments:arguments),
    '/url_launcher': (context, {arguments}) => UrlLauncherPage(title: '想去哪儿就去哪儿', arguments:arguments),
    '/futureBuilder': (context, {arguments}) => FutureBuilderPage(title: 'FutureBuilder', arguments:arguments),
    '/streamBuilder': (context, {arguments}) => StreamBuilderPage(title: 'StreamBuilder', arguments:arguments),
    '/permission': (context, {arguments}) => PermissionPage(title: 'Permission', arguments:arguments),
    
  };
  // 路由参数
  static dynamic onGenerateRoute (RouteSettings settings) {
    String? name = settings.name;
    Function? pageContextBuilder = MyRouter.routes[name];
    if (pageContextBuilder != null) {
      if (settings.arguments != null) {
        Route route = MaterialPageRoute(builder: (context) => pageContextBuilder(context, arguments: settings.arguments));
        return route;
      } else {
        Route route = MaterialPageRoute(builder: (context) => pageContextBuilder(context));
        return route;
      }
    }
    return null;
  }
}