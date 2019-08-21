
import 'package:flutter/material.dart';


import 'CustomTheme.dart';
import 'HomeScreen.dart';
import 'Themes.dart';


void main() {
  runApp(
    CustomTheme(
      initialThemeKey: MyThemeKeys.LIGHT,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel by Aabishkar',
      theme: CustomTheme.of(context),
      home: HomeScreen(),
      
    );
  }
}