/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-07 15:45:03
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-08 11:20:18
 */
import 'package:flutter/material.dart';
GlobalKey<_InputState> inputKey = GlobalKey();
class Input extends StatefulWidget {
  Input({Key? key, this.value, this.type=TextInputType.text, this.placeholder='请输入', this.onChange}) : super(key: key);
  final String? value;
  final TextInputType type;
  final String placeholder;
  Function? onChange;
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final TextEditingController _valueController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _valueController.text = widget.value ?? '';
  }
  resetValue () {
    _valueController.text = '';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        keyboardType: widget.type,
        controller: _valueController,
        decoration: InputDecoration(
          // labelText: "请输入用户名",
          hintText: widget.placeholder, // 相当于 placeholder
          // prefixIcon: Icon(Icons.person),
          // 未获得焦点下划线设为灰色
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          //获得焦点下划线设为蓝色
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        onChanged: (value) {
          widget.onChange!(value);
        },
      ),
    );
  }
}