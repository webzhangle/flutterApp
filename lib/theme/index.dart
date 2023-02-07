import 'package:flutter/material.dart';
class ThemeConfig {
  ///创建Material风格的color
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch as Map<int, Color>);
  }
  /// 主题颜色 蓝色
  static const int _primaryColorValue = 0xFF166EC9;
  static const Color primaryColor = Color(_primaryColorValue);
  static const MaterialColor primarySwatchColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFD1E3F6),
      100: Color(0xFFA7C9ED),
      200: Color(0xFF7EB0E4),
      300: Color(0xFF5999DB),
      400: Color(0xFF3683D2),
      500: Color(_primaryColorValue),
      600: Color(0xFF1258A1),
      700: Color(0xFF0d4279),
      800: Color(0xFF092C50),
      900: Color(0xFF041628),
    },
  );

  /// 主题颜色 红色
  static const int _primaryColorValue1 = 0xFFFF0000;
  static const Color primaryColor1 = Color(_primaryColorValue1);
  static const MaterialColor primarySwatchColor1 = MaterialColor(
    _primaryColorValue1,
    <int, Color>{
      50: Color(0xFFFFE0E0),
      100: Color(0xFFFFB3B3),
      200: Color(0xFFFF8080),
      300: Color(0xFFFF4D4D),
      400: Color(0xFFFF2626),
      500: Color(_primaryColorValue1),
      600: Color(0xFFFF0000),
      700: Color(0xFFFF0000),
      800: Color(0xFFFF0000),
      900: Color(0xFFFF0000),
    },
  );
}

