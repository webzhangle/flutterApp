import 'package:flutter/material.dart';

class UserInfor {
  String? userName;
  String? passWord;
  UserInfor();
}

class UserInforNotifier extends ChangeNotifier {
  UserInfor _userInfor = UserInfor();
  UserInfor get userInfor => _userInfor;

  set setUserInfor (UserInfor val) {
    _userInfor = val;
    notifyListeners();
  }
}