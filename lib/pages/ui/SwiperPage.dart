/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-15 16:48:05
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-15 16:49:34
 */
import 'package:flutter/material.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key? key, required this.title, this.arguments}) : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
