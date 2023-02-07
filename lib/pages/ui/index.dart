/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 17:59:49
 * @LastEditors: zhangle
 * @LastEditTime: 2023-02-07 11:34:04
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/components/basics/Button/index.dart';

class UiIndex extends StatefulWidget {
  UiIndex({Key? key}) : super(key: key);

  @override
  State<UiIndex> createState() => _UiIndexState();
}

class _UiIndexState extends State<UiIndex> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '按钮组件',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/button',
                      arguments: {"str": 'button'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '输入框组件',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/input',
                      arguments: {"str": 'input'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '复选框组件',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/checkbox',
                      arguments: {"str": 'checkbox'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '单选框组件',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/radio',
                      arguments: {"str": 'radio'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'toast组件',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/toast',
                      arguments: {"str": 'toast'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'dialog组件',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/dialog',
                      arguments: {"str": 'dialog'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'IconFont组件',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/icon',
                      arguments: {"str": 'icon'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'Animation自定义动画',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/animation',
                      arguments: {"str": 'animation'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: 'Slivers的世界',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/slivers',
                      arguments: {"str": 'slivers'});
                }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Button(
                text: '列表',
                block: true,
                onTap: () {
                  Navigator.pushNamed(context, '/list',
                      arguments: {"str": 'list'});
                }),
          ),
        ],
      ),
    );
  }
}
