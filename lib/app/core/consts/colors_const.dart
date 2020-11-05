import 'package:flutter/material.dart';

class ColorsConst {
  final Color _mainColor = const Color(0xFF40A4fC);
  final Color _mainDarkColor = const Color(0xFF333333);
  final Color _secondColor = const Color(0xFF333333);
  final Color _secondDarkColor = const Color(0xFFE7F6F8);
  final Color _accentColor = const Color(0xFFADC4C8);
  final Color _accentDarkColor = const Color(0xFFADC4C8);

  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey600 = Color(0xFF757575);

  Color mainColor(double opacity) {
    return _mainColor.withOpacity(opacity);
  }

  Color secondColor(double opacity) {
    return _secondColor.withOpacity(opacity);
  }

  Color accentColor(double opacity) {
    return _accentColor.withOpacity(opacity);
  }

  Color mainDarkColor(double opacity) {
    return _mainDarkColor.withOpacity(opacity);
  }

  Color secondDarkColor(double opacity) {
    return _secondDarkColor.withOpacity(opacity);
  }

  Color accentDarkColor(double opacity) {
    return _accentDarkColor.withOpacity(opacity);
  }
}
