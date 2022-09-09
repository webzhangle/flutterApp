/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-08 20:03:08
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-08 21:05:50
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/IconFont/index.dart';
class IconPage extends StatefulWidget {
  IconPage({Key? key, required this.title, this.arguments}) : super(key: key);
  final String title;
  dynamic arguments;
  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: const Text('flutter 引入 iconfont图标 自定义的icon组件', style: TextStyle(fontSize: 16),),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: 1.0
                ), 
                itemCount: IconFont.iconList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(IconFont.iconList[index]['value']),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(IconFont.iconList[index]['name']),
                        )
                      ],
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}