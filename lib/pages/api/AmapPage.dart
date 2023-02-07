/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-11 12:41:14
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-12 00:19:19
 */
// https://blog.csdn.net/weixin_41735943/article/details/122977922
import 'package:flutter/material.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';

class AmapPage extends StatefulWidget {
  AmapPage({Key? key, required this.title, this.arguments}) : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<AmapPage> createState() => _AmapPageState();
}

class _AmapPageState extends State<AmapPage> {
  final AMapWidget map = const AMapWidget(
    privacyStatement:
        AMapPrivacyStatement(hasShow: true, hasAgree: true, hasContains: true),
    apiKey: AMapApiKey(
        iosKey: 'e8b8d83460a6ef54082f68abcd9285e4',
        androidKey: 'd2d49c2b246dd7c077d50c4c7bdd7fee'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Container(width: double.infinity, height: 400.0, child: map)
        ],
      ),
    );
  }
}
