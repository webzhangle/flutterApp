/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-10 01:19:23
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-17 23:22:48
 */
import 'package:flutter/material.dart';

class HapyMediaQuery extends StatefulWidget {
  HapyMediaQuery({Key? key, required this.title, this.arguments})
      : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<HapyMediaQuery> createState() => _HapyMediaQueryState();
}

class _HapyMediaQueryState extends State<HapyMediaQuery> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Container(
                      child: const Text('手机屏幕'),
                    ),
                    Expanded(
                        child: Text(
                      '宽度${data.size.width}---高度${data.size.height}',
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Container(
                      child: const Text('设备像素比'),
                    ),
                    Expanded(
                        child: Text('${data.devicePixelRatio}',
                            textAlign: TextAlign.right))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Container(
                      child: const Text('键盘的高度'),
                    ),
                    Expanded(
                        child: Text('${data.viewInsets.bottom}',
                            textAlign: TextAlign.right))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Container(
                      child: const Text('横屏还是竖屏'),
                    ),
                    Expanded(
                        child: Text('${data.orientation}',
                            textAlign: TextAlign.right))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Container(
                      child: const Text('刘海屏”或者系统状态栏1'),
                    ),
                    Expanded(
                        child:
                            Text('${data.padding}', textAlign: TextAlign.right))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Container(
                      child: const Text('刘海屏”或者系统状态栏2'),
                    ),
                    Expanded(
                        child: Text('${data.viewPadding.top}',
                            textAlign: TextAlign.right))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
