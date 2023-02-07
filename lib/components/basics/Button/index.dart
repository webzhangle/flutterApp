/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 22:47:01
 * @LastEditors: zhangle
 * @LastEditTime: 2023-02-03 14:34:08
 */
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatefulWidget {
  const Button({
    Key? key,
    this.type = 'default',
    this.block = false,
    this.round = false,
    this.disabled = false,
    this.backgroundColor = const Color.fromRGBO(25, 137, 250, 1),
    this.borderRadius = 0,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text; // 按钮元素
  final String type;
  final bool round; // 是否是圆角
  final bool disabled; // 是否禁用
  final bool block; // 设置是否是块级
  final double borderRadius;
  final Color backgroundColor;
  final Function onTap;
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  late Color backgroundColorA;
  late double width;
  late Color color;
  double opacity = 1.0; // 透明度
  dynamic shape; // 设置裁剪形状
  void onPressed() {
    widget.onTap();
  }

  @override
  void initState() {
    super.initState();
    if (widget.disabled == true) {
      opacity = 0.6;
    }
    if (widget.type == 'plain') {
      color = widget.backgroundColor;
      backgroundColorA = const Color.fromRGBO(255, 255, 255, 1);
    } else {
      color = const Color.fromRGBO(255, 255, 255, 1);
      backgroundColorA = widget.backgroundColor;
    }
    if (widget.round == true) {
      // 如果圆角
      shape = MaterialStateProperty.all(StadiumBorder(
          side: BorderSide(
        //设置 界面效果
        // style: BorderStyle.solid,
        color: widget.type == 'plain' ? color : backgroundColorA,
      )));
    } else if (widget.borderRadius == 0) {
      shape = MaterialStateProperty.all(BeveledRectangleBorder(
          side: BorderSide(
              color: widget.type == 'plain' ? color : backgroundColorA,
              width: 0.5)));
    }
    if (widget.block) {
      width = double.infinity;
    } else {
      width = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: opacity,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            child: ElevatedButton(
              onPressed: widget.disabled ? null : onPressed,
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.resolveWith<Size>(
                      (states) => Size(width, 44)),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return backgroundColorA;
                      } else if (states.contains(MaterialState.disabled)) {
                        return backgroundColorA;
                      }
                      return backgroundColorA; // Use the component's default./ Use the component's default.
                    },
                  ),
                  shape: shape),
              child: Text(widget.text, style: TextStyle(color: color)),
            )));
  }
}
