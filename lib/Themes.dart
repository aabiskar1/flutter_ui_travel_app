import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum MyThemeKeys { LIGHT, DARK, DARKER, SKYBLUE, BLOOD }

class MyThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey,
    brightness: Brightness.dark,
  );

  static final ThemeData darkerTheme = ThemeData(
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      accentColor: Colors.white);

  static final ThemeData skyTheme = ThemeData(
      primaryColor: Colors.lightBlue,
      brightness: Brightness.light,
      accentColor: Colors.white);

  static final ThemeData bloodTheme = ThemeData(
      primaryColor: Colors.red.shade900,
      brightness: Brightness.dark,
      accentColor: Colors.white);
//
  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ));
        return lightTheme;
      case MyThemeKeys.DARK:
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.grey,
        ));
        return darkTheme;
      case MyThemeKeys.DARKER:
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ));
        return darkerTheme;
      case MyThemeKeys.SKYBLUE:
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.lightBlue,
        ));
        return skyTheme;
      case MyThemeKeys.BLOOD:
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.red.shade900,
        ));
        return bloodTheme;
      default:
        return lightTheme;
    }
  }
}
