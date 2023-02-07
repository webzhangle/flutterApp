/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 15:21:36
 * @LastEditors: zhangle
 * @LastEditTime: 2023-02-03 10:58:40
 */
import 'dart:convert';
import 'dart:ffi';
import 'package:app/http/httpClass/shop_list.dart';
import 'package:flutter/material.dart';
import 'package:app/http/request.dart';
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
  late Widget GetRequestWidget;
  List<dynamic> resultData = [];
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
                          child: getData(),
                        ),
                        Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                        Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(color: Colors.blue),
                        )
                      ],
            ))),
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
        ));
  }
  
  Widget getData () {
    print('object');
    print(resultData);
    List<Widget> list = [];
    for (var item in resultData) {
      list.add(
        Row(
          children: [
            Text('商品: ${item.categoryName}', style: const TextStyle(fontSize: 20),),
            Text('价格: ${item.goodsCount}', style: const TextStyle(fontSize: 20),)
          ],
        )
      );
    };
    var content = Column(
      children: list,
    );
    return content;
  }

  void get() async {
    var result = await HttpUtils.get(path: '/demo/categories');
    ShopList shopList = ShopList.fromJson(result);
    setState(() {
      resultData = shopList.data!;
    });
    // print(jsonDecode(result.toString())['name']); // 可以这样简写
    // print(result['page']);
    // print('123455');
  }

  void post() async {
    // var http = MyHttp();
    // var result = await http.request(method: 'POST', url: '/api/signPassword/verify', data: {
    //   'code': "123456",
    //   'password': "e10adc3949ba59abbe56e057f20f883e"
    // });
    // print(result);
  }
}
