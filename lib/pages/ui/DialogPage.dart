/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-08 22:35:13
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-10 00:59:07
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/Button/index.dart';
import 'package:app/components/basics/Dialog/index.dart';
class DialogPage extends StatefulWidget {
  DialogPage({Key? key, required this.title, this.arguments}) : super(key: key);
  final String title;
  dynamic arguments;
  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Button(text: '显示alert弹窗', block: true, onTap: () {
                HapyDialog.show(context, title: '我的标题1', content: '我是相应的内容2！');
              }),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Button(text: '显示confirm弹窗', block: true, onTap: () {
                HapyDialog.show(context, type: 'confirm', title: '我的标题1', content: '我是相应的内容2！');
              }),
            )
          ],
        ),
      ),
    );
  }
}