import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'core/theme/app_theme_factory.dart';
import 'interfaces/shared_repository_interface.dart';
import 'interfaces/theme_app_interface.dart';
import 'repositories/shared_repository.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  SharedRepository sharedRepository =
      Modular.get<ISharedRepositoryInterface>() as SharedRepository;

  _AppControllerBase() {
    loadThemeData();
  }

  @observable
  IThemeAppInterface themeApp = AppThemeFactory.getTheme(ThemeMode.light);

  @observable
  ThemeMode themeMode = ThemeMode.light;

  @action
  Future<void> loadThemeData() async {
    await sharedRepository.readThemeMode().then((mode) {
      themeMode = mode;
      themeApp = AppThemeFactory.getTheme(mode);
      setThemeData(mode, saveShared: false);
    });
  }

  @action
  Future<void> setThemeData(ThemeMode mode, {bool saveShared = true}) async {
    themeMode = mode;
    themeApp = AppThemeFactory.getTheme(mode);
    if (saveShared) {
      await sharedRepository.saveThemeMode(mode);
    }
  }
}
