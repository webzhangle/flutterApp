/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-07 15:36:36
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-07 16:02:41
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/Input/index.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key, required this.title, this.arguments}) : super(key: key);
  final String title;
  dynamic arguments;
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: Input(
                  placeholder: '文本键盘',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Input(placeholder: '数字键盘', type: TextInputType.number),
              )
            ],
          ),
        ));
  }
}
