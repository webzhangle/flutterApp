import 'package:flutter/material.dart';
import 'package:app/theme/index.dart';
class AppConfig {
  MaterialColor theme = ThemeConfig.primarySwatchColor;
  AppConfig();
}

class AppConfigNotifier extends ChangeNotifier {
  AppConfig _appConfig = AppConfig();
  AppConfig get appConfig => _appConfig;
  
  set setAppConfig (AppConfig val) {
    _appConfig = val;
    notifyListeners();
  }
}