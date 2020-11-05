import 'package:flutter/material.dart';

abstract class ISharedRepositoryInterface {
  Future<bool> readUserSkipIntro();
  Future<bool> saveUserSkipIntro();

  Future<ThemeMode> readThemeMode();
  Future<bool> saveThemeMode(ThemeMode themeMode);
}
