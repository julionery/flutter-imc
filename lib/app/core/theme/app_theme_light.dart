import 'package:flutter/material.dart';

import '../../core/consts/colors_const.dart';
import '../../interfaces/theme_app_interface.dart';

class AppThemeLight implements IThemeAppInterface {
  @override
  ThemeData getTheme() {
    return ThemeData(
      fontFamily: 'Google',
      primaryColor: ColorsConst().mainColor(1),
      brightness: Brightness.light,
      accentColor: ColorsConst().mainColor(1),
      focusColor: ColorsConst().accentColor(1),
      hintColor: ColorsConst().secondColor(1),
      backgroundColor: ColorsConst().mainColor(1),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorsConst().mainColor(1),
          foregroundColor: Colors.white),
      textTheme: TextTheme(
        button: const TextStyle(color: Colors.white),
        headline1: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w300,
            color: ColorsConst().secondColor(1)),
        headline2: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
            color: ColorsConst().mainColor(1)),
        headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: ColorsConst().secondColor(1)),
        headline4: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: ColorsConst().secondColor(1)),
        headline5:
            TextStyle(fontSize: 20.0, color: ColorsConst().secondColor(1)),
        headline6: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorsConst().mainColor(1)),
        subtitle1: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            color: ColorsConst().secondColor(1)),
        bodyText2:
            TextStyle(fontSize: 12.0, color: ColorsConst().secondColor(1)),
        bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: ColorsConst().secondColor(1)),
        caption:
            TextStyle(fontSize: 12.0, color: ColorsConst().secondColor(0.6)),
      ),
    );
  }

  String themeToString() {
    return ThemeMode.light.toString();
  }
}
