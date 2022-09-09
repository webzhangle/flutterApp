/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 15:21:36
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-07 18:00:53
 */
import 'dart:convert';
import 'package:app/http/httpClass/TaskView.dart';
import 'package:flutter/material.dart';
import 'package:app/http/index.dart';
import 'package:app/components/basics/Button/index.dart';
class HttpRequest extends StatefulWidget {
  HttpRequest({Key? key, this.title, this.arguments}) : super(key: key);
  final String? title;
  dynamic arguments;
  @override
  State<HttpRequest> createState() => _HttpRequestState();
}

class _HttpRequestState extends State<HttpRequest> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title!)),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                  )
                ],
              )
            )
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Button(text: 'GET请求', round: true, onTap: get),
                Button(text: 'POST请求', round: true, onTap: post)
              ],
            ),
          )
        ],
      )
    );
  }
  void get () async {
    var http = MyHttp();
    var result = await http.request(method: 'GET', url: '/task/view/ecMTAwMDAwMDY0Mw');
    // print(jsonDecode(result.toString())['name']); // 可以这样简写
    setState(() {
      name = TaskView.fromJson(jsonDecode(result.toString())).name!;
    });
  }
  void post () async {
    var http = MyHttp();
    var result = await http.request(method: 'POST', url: '/api/signPassword/verify', data: {
      'code': "123456",
      'password': "e10adc3949ba59abbe56e057f20f883e"
    });
    print(result);
  }
}