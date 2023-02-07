/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 17:59:42
 * @LastEditors: zhangle
 * @LastEditTime: 2022-08-04 23:33:11
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/Button/index.dart';

class ApiIndex extends StatefulWidget {
  ApiIndex({Key? key}) : super(key: key);
  @override
  State<ApiIndex> createState() => _ApiIndexState();
}

class _ApiIndexState extends State<ApiIndex> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '网络请求',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/http',
                      arguments: {"str": 'http'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '本地存储',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/shared_preferences',
                      arguments: {"str": 'shared_preferences'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '状态管理InheritedWidget',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/inherited',
                      arguments: {"str": 'inherited'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '设备信息',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/device_info',
                      arguments: {"str": 'device_info'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'MediaQuery',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/mediaQuery',
                      arguments: {"str": 'mediaQuery'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '高德地图',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/amap',
                      arguments: {"str": 'amap'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'webview',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/webview',
                      arguments: {"str": 'webview'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '想去哪儿就去哪儿',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/url_launcher',
                      arguments: {"str": 'url_launcher'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'FutureBuilder异步更新',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/futureBuilder',
                      arguments: {"str": 'FutureBuilder'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'StreamBuilderr异步更新',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/streamBuilder',
                      arguments: {"str": 'streamBuilder'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '权限设置',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/permission',
                      arguments: {"str": 'permission'});
                }),
          ),
        ],
      ),
    );
  }
}
