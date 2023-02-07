/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-07 17:18:26
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-08 11:32:25
 */
import 'package:flutter/material.dart';
import 'package:app/components/basics/Button/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app/components/basics/Input/index.dart';

class SharedPreferencesClass extends StatefulWidget {
  SharedPreferencesClass({Key? key, required this.title, this.arguments})
      : super(key: key);
  final String title;
  dynamic arguments;
  @override
  State<SharedPreferencesClass> createState() => _SharedPreferencesClassState();
}

class _SharedPreferencesClassState extends State<SharedPreferencesClass> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String userName = '';
  String value = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                  'Supported data types are int, double, bool, String and List<String>',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Input(
                      key: inputKey,
                      value: userName,
                      placeholder: '请输入名字',
                      onChange: (val) {
                        value = val;
                      }),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Button(
                        text: '设置名字',
                        onTap: () async {
                          final SharedPreferences prefs = await _prefs;
                          await prefs.setString('userName', value);
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(userName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Button(
                            text: '获取名字',
                            round: true,
                            onTap: () async {
                              final SharedPreferences prefs = await _prefs;
                              setState(() {
                                userName = prefs.getString('userName') ?? '';
                              });
                            }),
                        Button(
                            text: '移除名字',
                            round: true,
                            type: 'plain',
                            onTap: () async {
                              final SharedPreferences prefs = await _prefs;
                              await prefs.remove('userName');
                              inputKey.currentState?.resetValue();
                              setState(() {
                                userName = prefs.getString('userName') ?? '';
                              });
                            })
                      ])
                ]),
              ),
            )
          ])),
    );
  }
}
