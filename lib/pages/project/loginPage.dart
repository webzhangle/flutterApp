import 'package:app/store/model/UserInfor.dart';
import 'package:flutter/material.dart';
import 'package:app/components/basics/Input/index.dart';
import 'package:app/components/basics/Button/index.dart';
import 'package:app/components/basics/Checkbox/index.dart';
import 'package:app/http/request.dart';
import 'package:app/components/basics/IconFont/index.dart';
import 'package:provider/provider.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title, this.arguments}) : super(key: key);
  String title;
  dynamic arguments;

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  bool checked = false;
  String userName = '';
  String passWord = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 45.0),
        child: Column(
          children: [
            Container(
              height: 48.0,
              margin: const EdgeInsets.only(bottom: 16.0),
              padding: const EdgeInsets.symmetric( horizontal: 24.0),
              decoration: const BoxDecoration(color: Color.fromRGBO(241, 243, 247, 1), borderRadius: BorderRadius.all(Radius.circular(24)),),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Input(placeholder: '请输入手机号', onChange: (val) {
                    userName = val;
                  }),)
                ],
              )
            ),
            Container(
              height: 48.0,
              margin: const EdgeInsets.only(bottom: 32.0),
              padding: const EdgeInsets.symmetric( horizontal: 24.0),
              decoration: const BoxDecoration(color: Color.fromRGBO(241, 243, 247, 1), borderRadius: BorderRadius.all(Radius.circular(24)),),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Input(placeholder: '请输入密码', onChange: (val) {
                    passWord = val;
                  }),)
                ],
              )
            ),
            Container(
              height: 48.0,
              margin: EdgeInsets.only(bottom: 18.0),
              child: Button(text: '登录', borderRadius: 30.0, block: true, onTap: () {
                final global = context.read<UserInforNotifier>();
                if (global.userInfor != null) {
                  global.userInfor.userName = userName;
                }
                global.setUserInfor = global.userInfor;
                HttpUtils.post(path: '/login', data: {
                  "username": userName,
                  "password": passWord
                });
              },),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: const Text('验证码登录', style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(6, 48, 80, 1)),),
                  onTap: () => {},
                ),
                Container(
                  width: 1,
                  height: 13,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  color: const Color.fromRGBO(151, 151, 151, 1),
                ),
                GestureDetector(
                  child: const Text('立即注册', style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(6, 48, 80, 1)),),
                  onTap: () => {},
                ),
                Container(
                  width: 1,
                  height: 13,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  color: const Color.fromRGBO(151, 151, 151, 1),
                ),
                GestureDetector(
                  child: const Text('找回密码', style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(6, 48, 80, 1)),),
                  onTap: () => {},
                ),
              ],
            ),
            Container(
              child: Consumer<UserInforNotifier>(builder: (_, global, __) {
                return Text("${global.userInfor.userName}");
              }),
            ),
            Container(
              margin: const EdgeInsets.only(top: 150.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 4.0),
                    child: TsaCheckbox(value: checked, lable:'33333', onChanged: (val) => {
                      checked = val
                    }),
                  ),
                  const Text('我已阅读并同意', style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(89, 111, 128, 1)),),
                  GestureDetector(
                    child: const Text('《用户协议》', style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(82, 204, 148, 1)),),
                  ),
                  GestureDetector(
                    child: const Text('《隐私协议》', style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(82, 204, 148, 1)),),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}