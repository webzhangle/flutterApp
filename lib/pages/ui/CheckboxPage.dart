/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-07 16:12:55
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-07 16:34:33
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/Checkbox/index.dart';
class CheckboxPage extends StatefulWidget {
  CheckboxPage({Key? key, required this.title, this.arguments}) : super(key: key);
  final String title;
  dynamic arguments;
  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Container(
            child: CheckboxZ(value: false, onChanged: (val) {
              print(val);
            }),
          ),
          Container(
            child: CheckboxZ(value: false, lable: '多选框' ,onChanged: (val) {
              print(val);
            }),
          )
        ],
      ),
    );
  }
}