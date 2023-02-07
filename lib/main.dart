/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-06-07 21:45:58
 * @LastEditors: zhangle
 * @LastEditTime: 2023-02-07 14:50:05
 */

import 'package:flutter/material.dart';
import 'package:app/router/index.dart';
import 'package:provider/provider.dart';
import 'package:app/store/model/UserInfor.dart';
import 'package:app/theme/index.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return UserInforNotifier();
          },
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: ThemeConfig.primarySwatchColor,
        ),
        initialRoute: MyRouter.initialRoute,
        onGenerateRoute: (RouteSettings settings) {
          return MyRouter.onGenerateRoute(settings);
        }
      )
    );
  }
}
