/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-15 17:10:45
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-16 23:24:10
 */
import 'package:flutter/material.dart';
class FutureBuilderPage extends StatefulWidget {
  FutureBuilderPage({Key? key, required this.title, this.arguments}) : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPage();
}

class _FutureBuilderPage extends State<FutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 2), () => 'FutureBuilderPage'),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            // ConnectionState.none // 没有 future 的情况
            // ConnectionState.waiting // future 等待中
            // ConnectionState.done  // future 完成
            if (snapshot.connectionState == ConnectionState.done) { // 状态完成
              if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else if (snapshot.hasData) {
                return Text('${snapshot.data}');
              }
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(),
                    )
                )
              );
            }
            throw 'throw';
          }
        )
    );
  }
}