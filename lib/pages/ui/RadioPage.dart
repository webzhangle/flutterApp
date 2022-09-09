/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-11 23:29:25
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-11 23:32:44
 */
import 'package:flutter/material.dart';
class RadioPage extends StatefulWidget {
  RadioPage({Key? key, required this.title, this.arguments}) : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              
            ),
          ],
        ),
      ),
    );
  }
}