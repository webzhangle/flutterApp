/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-08 13:58:43
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-11 23:04:06
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/Button/index.dart';
import 'package:app/components/basics/Toast/index.dart';

class ToastPage extends StatefulWidget {
  ToastPage({Key? key, required this.title, this.arguments}) : super(key: key);
  final String title;
  final dynamic arguments;
  @override
  State<ToastPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<ToastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Button(
                      text: '显示loading',
                      onTap: () {
                        Toast.loading(context);
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Button(
                      text: '隐藏loading',
                      backgroundColor: const Color.fromRGBO(255, 0, 0, 1),
                      onTap: () {
                        Toast.clear(context);
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
