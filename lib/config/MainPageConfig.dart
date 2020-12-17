

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_dev/FontWeights.dart';
import 'package:mobile_dev/UsedColors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPageConfig with ChangeNotifier {
  bool _stateIsSet = true;
  Color _color = Colors.red[700];
  String _title = "telesdfd";
  FontWeight _fontWeight = FontWeight.bold;
  double _fontSize = 17.0;

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

  void changeTitle(String title) async{
    _title = title;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('title', title);
  }

  void changeFontSize(double change) async{
    _fontSize = _fontSize + change;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('fontSize', _fontSize);
  }

  void initState() async{
    if(_stateIsSet){
      SharedPreferences prefs = await SharedPreferences.getInstance();

      _title = prefs.getString('title') == null ? "Tiligram" : prefs.getString('title');

      _fontSize = prefs.getDouble('fontSize') == null ? 17.0 : prefs.getDouble('fontSize');

      if(prefs.getInt('fontWeight') != null){
        if(prefs.getInt('fontWeight') == FontWeights.normal.index){
          _fontWeight = FontWeight.normal;
        }
        if(prefs.getInt('fontWeight') == FontWeights.bold.index){
          _fontWeight = FontWeight.bold;
        }
        if(prefs.getInt('fontWeight') == FontWeights.w100.index){
          _fontWeight = FontWeight.w100;
        }
        if(prefs.getInt('fontWeight') == FontWeights.w200.index){
          _fontWeight = FontWeight.w200;
        }
      }
      else{
        _fontWeight = FontWeight.bold;
      }

      if(prefs.getInt('usedColor') != null){
        if(prefs.getInt('usedColor') == UsedColors.red.index){
          _color = Colors.red;
        }
        if(prefs.getInt('usedColor') == UsedColors.green.index){
          _color = Colors.green;
        }
        if(prefs.getInt('usedColor') == UsedColors.blue.index){
          _color = Colors.blue;
        }
        if(prefs.getInt('usedColor') == UsedColors.yellow.index){
          _color = Colors.yellow;
        }
        if(prefs.getInt('usedColor') == UsedColors.grey.index){
          _color = Colors.grey;
        }
        if(prefs.getInt('usedColor') == UsedColors.pink.index){
          _color = Colors.pink;
        }
      }
      else{
        _color = Colors.red;
      }
      notifyListeners();
      _stateIsSet = false;
    }
  }
}