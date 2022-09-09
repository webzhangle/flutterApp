/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-15 17:10:45
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-15 23:13:12
 */
import 'package:flutter/material.dart';
class StreamBuilderPage extends StatefulWidget {
  StreamBuilderPage({Key? key, required this.title, this.arguments}) : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<StreamBuilderPage> createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: SingleChildScrollView(
        child: FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return Text('122');
          }
        )
      ),
    );
  }
}