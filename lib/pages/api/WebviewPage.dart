/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-12 09:49:42
 * @LastEditors: zhangle
 * @LastEditTime: 2022-10-24 16:03:09
 */
import 'dart:convert';

import 'package:app/components/basics/Button/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class WebviewPage extends StatefulWidget {
  WebviewPage({Key? key, required this.title, this.arguments})
      : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  late Map result = <String, dynamic>{};
  late WebViewController _webViewController;
  JavascriptChannel jsBridge(BuildContext context) => JavascriptChannel(
      name: 'jsbridge', // 与h5 端的一致 不然收不到消息
      onMessageReceived: (JavascriptMessage message) async {
        print(message.message);
        setState(() {
          result = jsonDecode(message.message);
        });
      });
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid)
      WebView.platform = AndroidWebView(); // SurfaceAndroidWebView
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Container(
            //   padding: const EdgeInsets.all(10.0),
            //   child: const Text('本地地址', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            // ),
            // SizedBox(
            //   width: double.infinity,
            //   height: 100,
            //   child: WebView(
            //     // initialUrl: 'http://sign.tsatest.cn/mobile/index?watchWord=uwMTAwMDAwMDYxMg', // 网络请求
            //     // initialUrl: Uri.dataFromString('assets/html/index.html', mimeType: 'text/html', encoding: Encoding.getByName('utf-8')).toString(), // 加载类似于富文本的html
            //     javascriptMode: JavascriptMode.unrestricted,  // unrestricted: 无限制，disabled：禁用，这是默认状态
            //     javascriptChannels: <JavascriptChannel> {
            //       jsBridge(context),
            //     },
            //     onWebViewCreated: (WebViewController controller) async { // //WebView创建完成之后的回调
            //       _webViewController = controller;
            //       dynamic htmlPath = await rootBundle.loadString('assets/html/index.html'); // 加载本地的html
            //       controller.loadHtmlString(htmlPath);
            //     },
            //     onPageStarted: (str) { // //开始加载页面回调
            //       // print(str);
            //     },
            //     onPageFinished: (str) { // 页面加载完成的回调
            //       // print(str);
            //     },
            //     onWebResourceError: (WebResourceError Error) { // 资源加载失败
            //       // print(Error);
            //     },
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   child: Text('H5传过来的: ${result['name'] ?? 'xxx'}---${result['version'] ?? 'xxx'}', style: TextStyle(fontSize: 16),),
            // ),
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   child: Button(text: '给H5发送消息', onTap: () {
            //      _webViewController.runJavascript('globalCallback(123)');
            //   }),
            // ),
            // Container(
            //   width: double.infinity,
            //   padding: const EdgeInsets.all(10.0),
            //   decoration: const BoxDecoration(
            //     border: Border(top: BorderSide(width: 1, color: Colors.black))
            //   ),
            //   child: const Text('网络地址', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            // ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: WebView(
                  initialUrl:
                      'http://192.168.1.194:8099/?sourceType=954210', // 网络请求
                  // initialUrl: Uri.dataFromString('assets/html/index.html', mimeType: 'text/html', encoding: Encoding.getByName('utf-8')).toString(), // 加载类似于富文本的html
                  javascriptMode: JavascriptMode
                      .unrestricted, // unrestricted: 无限制，disabled：禁用，这是默认状态
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
