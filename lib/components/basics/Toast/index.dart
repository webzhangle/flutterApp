/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-08 11:38:39
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-08 15:43:10
 */

import 'package:flutter/material.dart';

class Toast {
  static BuildContext? toastContext;
  Toast.loading(BuildContext context) {
    show(context);
  }
  static void show(BuildContext context,
      {String text = '加载中', int duration = 2}) {
    showDialog(
        barrierDismissible: false, // 点击遮罩不关闭
        barrierColor: null,
        context: context,
        builder: (ctx) {
          Toast.toastContext = ctx;
          return LoadingComponents(text: text);
        });
    if (duration != 0) {
      // 如果等于0的话永久不关闭
      Future.delayed(Duration(seconds: duration), () {
        Toast.clear(context);
      });
    }
  }

  static void clear(BuildContext context) {
    if (Toast.toastContext != null) {
      Navigator.of(context).pop(Toast.toastContext);
      Toast.toastContext = null;
    }
  }
}

class LoadingComponents extends StatelessWidget {
  const LoadingComponents({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          width: 100,
          height: 100,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5) // 背景色
                  ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Icon(
                  Icons.loop,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      decoration: TextDecoration.none),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
