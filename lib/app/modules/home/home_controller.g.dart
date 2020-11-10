// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  final _$heightAtom = Atom(name: '_HomeController.height');

  @override
  double get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(double value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  final _$weightAtom = Atom(name: '_HomeController.weight');

  @override
  double get weight {
    _$weightAtom.reportRead();
    return super.weight;
  }

  @override
  set weight(double value) {
    _$weightAtom.reportWrite(value, super.weight, () {
      super.weight = value;
    });
  }

  final _$resultAtom = Atom(name: '_HomeController.result');

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  final _$situationAtom = Atom(name: '_HomeController.situation');

  @override
  String get situation {
    _$situationAtom.reportRead();
    return super.situation;
  }

  @override
  set situation(String value) {
    _$situationAtom.reportWrite(value, super.situation, () {
      super.situation = value;
    });
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  void setHeight(String height) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setHeight');
    try {
      return super.setHeight(height);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWeight(String weight) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setWeight');
    try {
      return super.setWeight(weight);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
height: ${height},
weight: ${weight},
result: ${result},
situation: ${situation}
    ''';
  }
}
