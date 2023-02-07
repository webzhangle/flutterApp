import 'package:flutter/material.dart';
import 'package:app/components/basics/Button/index.dart';
class Project extends StatefulWidget {
  Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Button(block: true, text: '首页页面', onTap: () => {
              Navigator.pushNamed(context, '/demoIndex', arguments: {"str": 'login'})
            }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Button(block: true, text: '登录页面', onTap: () => {
              Navigator.pushNamed(context, '/login', arguments: {"str": 'login'})
            }),
          ),
        ],
      )
    );
  }
}