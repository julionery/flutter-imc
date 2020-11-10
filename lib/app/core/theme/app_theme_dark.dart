import 'package:flutter/material.dart';

import '../../core/consts/colors_const.dart';
import '../../interfaces/theme_app_interface.dart';

class AppThemeDark implements IThemeAppInterface {
  @override
  ThemeData getTheme() {
    return ThemeData(
      fontFamily: 'Google',
      primaryColor: ColorsConst().secondDarkColor(1),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF2C2C2C),
      accentColor: ColorsConst().accentDarkColor(1),
      hintColor: ColorsConst().secondDarkColor(1),
      focusColor: ColorsConst().accentDarkColor(1),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorsConst().mainDarkColor(1),
          foregroundColor: Colors.white),
      textTheme: TextTheme(
        button: const TextStyle(color: Color(0xFF252525)),
        headline1: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w300,
            color: ColorsConst().secondDarkColor(1)),
        headline2: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
            color: ColorsConst().secondDarkColor(1)),
        headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: ColorsConst().secondDarkColor(1)),
        headline4: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: ColorsConst().secondDarkColor(1)),
        headline5:
            TextStyle(fontSize: 20.0, color: ColorsConst().secondDarkColor(1)),
        headline6: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorsConst().secondDarkColor(1)),
        subtitle1: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            color: ColorsConst().secondDarkColor(1)),
        bodyText2:
            TextStyle(fontSize: 12.0, color: ColorsConst().secondDarkColor(1)),
        bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: ColorsConst().secondDarkColor(1)),
        caption: TextStyle(
            fontSize: 12.0, color: ColorsConst().secondDarkColor(0.7)),
      ),
    );
  }

  String themeToString() {
    return ThemeMode.dark.toString();
  }
}
