/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-06-15 21:53:51
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-10 02:03:32
 */
/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-06-15 21:53:51
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-07 15:13:19
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/Button/index.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key? key, required this.title, this.arguments}) : super(key: key);
  final String title;
  dynamic arguments;
  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  DateTime date = DateTime.now();
  TimeOfDay time = const TimeOfDay(hour: 1, minute: 1);
  @override
  void initState() {
    super.initState();
    print(widget.arguments['str']);
  }

  void onPressed() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(text: '普通按钮', onTap: onPressed),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(text: '圆弧按钮', borderRadius: 6, onTap: onPressed),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(text: '圆角按钮', round: true, onTap: onPressed),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(text: '块级按钮', block: true, onTap: onPressed),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(
                    text: '红色的块级按钮',
                    backgroundColor: const Color.fromRGBO(255, 0, 0, 1),
                    block: true,
                    onTap: onPressed),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(
                    text: '禁用按钮',
                    block: true,
                    disabled: true,
                    onTap: onPressed),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(
                    text: '朴素按钮', type: 'plain', block: true, onTap: onPressed),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(
                    text: '圆角按钮', type: 'plain', round: true, onTap: onPressed),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Button(
                    text: '朴素按钮',
                    type: 'plain',
                    block: true,
                    disabled: true,
                    onTap: onPressed),
              )
            ],
          ),
        ));
  }
}
