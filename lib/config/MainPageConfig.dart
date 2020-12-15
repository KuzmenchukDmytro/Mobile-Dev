

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPageConfig with ChangeNotifier {
  Color _color = Colors.red[700];
  String _title = "Tiligram";
  FontWeight _fontWeight = FontWeight.bold;
  double _fontSize = 17;

  Color get getColor => _color;

  String get getTitle => _title;

  FontWeight get getFontWeight => _fontWeight;

  double get getFontSize => _fontSize;

  void changeColor(Color color) {
    _color = color;
    notifyListeners();
  }

  void changeFontWeight(FontWeight fontWeight){
    _fontWeight = fontWeight;
    notifyListeners();
  }

  void changeTitle(String title) {
    _title = title;
    notifyListeners();
  }

  void changeFontSize(double change){
    _fontSize = _fontSize + change;
    notifyListeners();
  }
}