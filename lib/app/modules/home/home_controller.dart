import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_controller.dart';

class HomeController {
  Future<void> switchThemeData() async {
    final appController = Modular.get<AppController>();
    if (appController.themeMode == ThemeMode.light) {
      await appController.setThemeData(ThemeMode.dark);
    } else {
      await appController.setThemeData(ThemeMode.light);
    }
  }
}
