/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-08-04 23:09:29
 * @LastEditors: zhangle
 * @LastEditTime: 2022-08-04 23:34:52
 */
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';

class PermissionPage extends StatefulWidget {
  String title;
  dynamic arguments;
  PermissionPage({Key? key, required this.title, this.arguments})
      : super(key: key);

  @override
  State<PermissionPage> createState() => _nameState();
}

class _nameState extends State<PermissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text('678'),
    );
  }
}
