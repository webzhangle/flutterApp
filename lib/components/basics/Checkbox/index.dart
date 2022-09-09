/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-07 16:09:07
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-08 20:02:15
 */
import 'package:flutter/material.dart';
class CheckboxZ extends StatefulWidget {
  const CheckboxZ({Key? key, required this.value, required this.onChanged, this.lable}) : super(key: key);
  final bool value;
  final Function onChanged;
  final String? lable;
  @override
  State<CheckboxZ> createState() => _CheckboxZState();
}

class _CheckboxZState extends State<CheckboxZ> {
  @override
  bool value = false;
  void initState() {
    super.initState();
    setState(() {
      value = widget.value;
    });
  }
  void onChanged (val) {
    setState(() {
      value = val;
      widget.onChanged(value);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged
          ),
          Container(
            child: widget.lable != null ? Text(widget.lable!): null,
          )
        ],
      )
    );
  }
}