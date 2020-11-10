import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../app_controller.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  double height = 0.0;

  @observable
  double weight = 0.0;

  @observable
  String result = '';

  @observable
  String situation = '';

  @action
  void setHeight(String height) => this.height = double.parse(height);

  @action
  void setWeight(String weight) => this.weight = double.parse(weight);

  void calculateIMC() {
    final imc = weight / (height * height);
    result = "Seu IMC é ${imc.toStringAsFixed(2)}";

    if (imc < 17) {
      situation = "Muito abaixo do peso";
    } else if ((imc >= 17) && (imc < 18.5)) {
      situation = "Abaixo do peso";
    } else if ((imc >= 18.5) && (imc < 25)) {
      situation = "Peso normal";
    } else if ((imc >= 25) && (imc < 30)) {
      situation = "Acima do peso";
    } else if ((imc >= 30) && (imc < 35)) {
      situation = "Obesidade I";
    } else if ((imc >= 35) && (imc < 40)) {
      situation = "Obesidade II (severa)";
    } else {
      situation = "Obesidade III (mórbida)";
    }

    debugPrint(situation);
  }

  void clear() {
    height = 0.0;
    weight = 0.0;
    result = "";
    situation = "";
  }

  Future<void> switchThemeData() async {
    final appController = Modular.get<AppController>();
    if (appController.themeMode == ThemeMode.light) {
      await appController.setThemeData(ThemeMode.dark);
    } else {
      await appController.setThemeData(ThemeMode.light);
    }
  }
}
