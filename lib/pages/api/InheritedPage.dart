/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-13 23:19:02
 * @LastEditors: zhangle
 * @LastEditTime: 2022-08-01 16:20:33
 */
import 'package:app/components/basics/Button/index.dart';
import 'package:flutter/material.dart';
import 'package:app/store/index.dart';
class InheritedPage extends StatefulWidget {
  String title;
  dynamic arguments;
  InheritedPage({Key? key, required this.title, this.arguments}) : super(key: key);

  @override
  State<InheritedPage> createState() => _InheritedPageState();
}

class _InheritedPageState extends State<InheritedPage> {
  Map userInfor = {};
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('InheritedPage didChangeDependencies');
  }
  @override
  Widget build(BuildContext context) {
    print('InheritedPagebuild');
    return Scaffold(
        appBar: AppBar(title: Text(widget.title),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ShareDataWidget(
                data: UserInforValueNotifier(UserInfor(name: 'zhangle', age: 0)),
                child: Parent()
              ),
            ]
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // final favoriteNotifier = ShareDataWidget.of(context);
            // print(ShareDataWidget.of(context));
          },
          child: const Icon(Icons.add),
        )
      );
  }
}

class Parent extends StatefulWidget {
  Parent({Key? key}) : super(key: key);

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Parent didChangeDependencies');
  }
  @override
  Widget build(BuildContext context) {
    print('Parentbuild');
    return Container(
      child: Column(
        children: [
          Text('我是爷爷'),
          Father(),
          Mother(
            child: Son()
          )
        ],
      ),
    );
  }
}

class Father extends StatefulWidget {
  Father({Key? key}) : super(key: key);

  @override
  State<Father> createState() => _FatherState();
}

class _FatherState extends State<Father> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Father didChangeDependencies');
  }
  @override
  Widget build(BuildContext context) {
    print('Fatherbuild');
    return Container(
      child: Text('我是爸爸'),
    );
  }
}

class Mother extends StatefulWidget {
  Widget child;
  Mother({Key? key,required this.child}) : super(key: key);

  @override
  State<Mother> createState() => _MotherState();
}

class _MotherState extends State<Mother> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Mother didChangeDependencies');
  }
  @override
  Widget build(BuildContext context) {
    print('Motherbuild');
    return Column(
      children: [
        Text('我是妈妈'),
        Button(text: '妈妈按钮点击', onTap: () {
          ShareDataWidget.of(context)?.data.setName('123');
        }),
        widget.child
      ],
    );
  }
}

class Son extends StatefulWidget {
  Son({Key? key}) : super(key: key);

  @override
  State<Son> createState() => _SonState();
}

class _SonState extends State<Son> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Son didChangeDependencies');
  }
  @override
  Widget build(BuildContext context) {
    print('Sonbuild');
    print(ShareDataWidget.of(context)!.data.value.name);
    return ValueListenableBuilder(
      valueListenable: ShareDataWidget.of(context)!.data,
      builder: (BuildContext context, UserInfor value, Widget? child) {
        return Column(
          children: [
            Text('我是儿子'),
            Text(value.name),
            Button(text: '按钮点击', onTap: () {
              ShareDataWidget.of(context)?.data.setName('哈哈哈');
            })
          ],
        );
      },
    );
  }
}