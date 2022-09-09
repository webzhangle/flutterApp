/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-06-07 21:45:58
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-12 00:02:54
 */

import 'package:flutter/material.dart';
import 'package:app/router/index.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRouter.initialRoute,
      onGenerateRoute: (RouteSettings settings) {
        return MyRouter.onGenerateRoute(settings);
      }
    );
  }
}