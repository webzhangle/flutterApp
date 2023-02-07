/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-14 17:22:23
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-15 00:12:13
 */
import 'package:app/components/basics/Button/index.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPage extends StatefulWidget {
  UrlLauncherPage({Key? key, required this.title, this.arguments})
      : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<UrlLauncherPage> createState() => _UrlLauncherPageState();
}

class _UrlLauncherPageState extends State<UrlLauncherPage> {
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                  'url_launcher是用于在移动平台中启动URL的Flutter插件，适用于IOS和Android平台。他可以打开网页，发送邮件，还可以拨打电话、打开外部应用',
                  style: TextStyle(fontSize: 16.0)),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '打电话',
                  block: true,
                  round: true,
                  onTap: () async {
                    final Uri url = Uri(scheme: 'tel', path: '15041824127');
                    canLaunchUrl(url).then((bool result) async {
                      await launchUrl(url);
                    });
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '发短信',
                  block: true,
                  type: 'plain',
                  round: true,
                  onTap: () async {
                    final Uri url = Uri(scheme: 'sms', path: '15041824127');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '看链接',
                  block: true,
                  round: true,
                  onTap: () async {
                    //设置url
                    final Uri url =
                        Uri(scheme: 'https', host: 'www.baidu.com', path: '/');
                    await launchUrl(url);
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '打开邮箱',
                  block: true,
                  round: true,
                  type: 'plain',
                  onTap: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: '759728395@qq.com',
                      query: encodeQueryParameters(<String, String>{
                        'subject': 'Example Subject & Symbols are allowed!',
                      }),
                    );

                    launchUrl(emailLaunchUri);
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '打开支付宝',
                  block: true,
                  round: true,
                  onTap: () async {
                    final Uri url = Uri(
                      scheme: 'alipays',
                    );
                    launchUrl(url);
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '打开微信',
                  block: true,
                  round: true,
                  type: 'plain',
                  onTap: () async {
                    final Uri url = Uri(
                      scheme: 'weixin',
                    );
                    launchUrl(url);
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '打开地图',
                  block: true,
                  round: true,
                  onTap: () async {
                    final Uri url = Uri(scheme: 'geo');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '打开京东',
                  block: true,
                  type: 'plain',
                  round: true,
                  onTap: () async {
                    final Uri url = Uri(scheme: 'openApp.jdmobile');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '打开淘宝',
                  block: true,
                  round: true,
                  onTap: () async {
                    final Uri url = Uri(scheme: 'taobao');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Button(
                  text: '打开百度地图',
                  block: true,
                  type: 'plain',
                  round: true,
                  onTap: () async {
                    final Uri url = Uri(scheme: 'bdapp');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
