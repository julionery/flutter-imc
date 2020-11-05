import 'package:flutter/material.dart';

import '../core/local_storage/local_storage.dart';
import '../interfaces/shared_repository_interface.dart';

class SharedRepository implements ISharedRepositoryInterface {
  static const String constSkipIntro = 'skip_intro';
  static const String constThemeMode = 'theme_mode';
  static const String constThemeModeDark = 'ThemeMode.dark';
  static const String constThemeModeLight = 'ThemeMode.light';

  @override
  Future<ThemeMode> readThemeMode() async {
    return LocalStorage.getValue<String>(constThemeMode).then((value) {
      switch (value as String) {
        case constThemeModeDark:
          return ThemeMode.dark;
          break;
        case constThemeModeLight:
          return ThemeMode.light;
          break;
        default:
          return ThemeMode.light;
          break;
      }
    });
  }

  @override
  Future<bool> saveThemeMode(ThemeMode themeMode) async {
    return LocalStorage.setValue<String>(constThemeMode, themeMode.toString());
  }

  @override
  Future<bool> readUserSkipIntro() async {
    final result = await LocalStorage.getValue<bool>(constSkipIntro);
    return result as bool;
  }

  @override
  Future<bool> saveUserSkipIntro() async {
    return LocalStorage.setValue<bool>(constSkipIntro, true);
  }
}
