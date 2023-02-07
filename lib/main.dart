/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-06-07 21:45:58
 * @LastEditors: zhangle
 * @LastEditTime: 2023-02-07 17:21:20
 */

import 'package:flutter/material.dart';
import 'package:app/router/index.dart';
import 'package:provider/provider.dart';
import 'package:app/store/model/UserInfor.dart';
import 'package:app/store/model/app.dart';
import 'package:app/theme/index.dart';
void main() {
  runApp(const MyApp());
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
        ),
        ChangeNotifierProvider(
          create: (_) {
            return AppConfigNotifier();
          },
        )
      ],
      child: Consumer<AppConfigNotifier>(
        builder: (context, global, _) {
          return MaterialApp(
            title: 'Flutter',
            theme: ThemeData(
              primarySwatch: global.appConfig.theme,
              // primarySwatch: ThemeConfig.createMaterialColor(Color(0xFF00FF00))
            ),
            initialRoute: MyRouter.initialRoute,
            onGenerateRoute: (RouteSettings settings) {
              return MyRouter.onGenerateRoute(settings);
            }
          );
        },
      )
    );
  }
}
