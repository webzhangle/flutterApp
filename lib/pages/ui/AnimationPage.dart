/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-10 22:17:25
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-11 00:20:55
 */
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:app/components/basics/IconFont/index.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key? key, required this.title, this.arguments})
      : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<AnimationPage> createState() => _AnimationState();
}

class _AnimationState extends State<AnimationPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation opacityAnimation;
  @override
  void initState() {
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..repeat();
    // 透明度的 controller
    opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text('透明度转换${_controller.value}'),
            ),
            AnimatedBuilder(
              animation: opacityAnimation,
              builder: (BuildContext context, Widget? child) {
                return Opacity(
                  opacity: opacityAnimation.value,
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: const BoxDecoration(color: Colors.deepOrange),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text('无限滚动${_controller.value}'),
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: 2 * pi * _controller.value,
                  child: const Icon(IconFont.refresh),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text('平移${_controller.value}'),
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return Transform.translate(
                  offset: Offset(200 * _controller.value, 0),
                  child: Container(
                    width: 300.0,
                    height: 200.0,
                    decoration: const BoxDecoration(color: Colors.amber),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
