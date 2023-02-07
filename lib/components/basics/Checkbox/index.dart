/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-07 16:09:07
 * @LastEditors: zhangle
 * @LastEditTime: 2023-02-06 09:17:04
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/IconFont/index.dart';

class TsaCheckbox extends StatefulWidget {
  TsaCheckbox({Key? key, required this.value, this.lable, this.onChanged}) : super(key: key);
  bool value;
  Function? onChanged;
  String? lable;
  @override
  State<TsaCheckbox> createState() => _TsaCheckboxState();
}

class _TsaCheckboxState extends State<TsaCheckbox> {
  bool checked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checked = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            checked = !checked;
          });
          if (widget.onChanged != null) {
            
            widget.onChanged!(checked);
          }
        },
        child: Row(
          children: [
            Container(
              child: Icon(checked == false ? IconFont.checkbox : IconFont.radio, size: 12.0,),
            ),
            Container(
              child: widget.lable == null ? null : Text(widget.lable!),
            )
          ],
        ),
      )
    );
  }
}