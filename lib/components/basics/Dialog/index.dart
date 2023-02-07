/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-08 22:32:54
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-10 00:58:02
 */
import 'package:flutter/material.dart';

class HapyDialog {
  HapyDialog();
  static void show(BuildContext context,
      {String title = '标题',
      String? content,
      String type = 'alert',
      Function? onConfirm,
      Function? onCancel}) {
    showDialog(
        barrierDismissible: false, // 点击遮罩不关闭
        // barrierColor: null,
        context: context,
        builder: (ctx) {
          return DialogComponent(
              title: title,
              content: content,
              type: type,
              onConfirm: onConfirm,
              onCancel: onCancel);
        });
  }
}

class DialogComponent extends StatefulWidget {
  DialogComponent(
      {Key? key,
      required this.type,
      required this.title,
      this.content,
      this.onConfirm,
      this.onCancel})
      : super(key: key);
  final String type;
  String title;
  String? content;
  Function? onConfirm;
  Function? onCancel;
  @override
  State<DialogComponent> createState() => _DialogComponentState();
}

class _DialogComponentState extends State<DialogComponent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width * 0.9,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(50, 50, 51, 1),
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(26, 8, 26, 24),
                  child: Text(
                    widget.content ?? '',
                    style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(100, 101, 102, 1),
                        decoration: TextDecoration.none),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(
                        width: 1, color: Color.fromRGBO(235, 237, 240, 1)),
                  )),
                  child: Row(
                    children: [
                      widget.type == 'alert'
                          ? Container()
                          : Expanded(
                              flex: 1,
                              child: Container(
                                height: 48,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        right: BorderSide(
                                            width: 1,
                                            color: Color.fromRGBO(
                                                235, 237, 240, 1)))),
                                child: TextButton(
                                  onPressed: () {
                                    if (widget.onCancel != null) {
                                      widget.onCancel!();
                                    }
                                    Navigator.pop(context, 'Cancel');
                                  },
                                  child: const Text('取消',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromRGBO(50, 50, 51, 1))),
                                ),
                              )),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 48,
                            child: TextButton(
                              onPressed: () {
                                if (widget.onConfirm != null) {
                                  widget.onConfirm!();
                                }
                                Navigator.pop(context, 'confirm');
                              },
                              child: const Text('确认',
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
