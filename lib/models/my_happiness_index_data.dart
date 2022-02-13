import 'package:flutter/material.dart';

class MyHappinessIndexData with ChangeNotifier {
  double _myHappinessIndex = 2.0;
  String _myHappinessAnimationIndex = '2+';

  double get myHappinessIndex => _myHappinessIndex;
  String get myHappinessAnimationIndex => _myHappinessAnimationIndex;

  void updateHappiness(double newHappinessIndex) {
    String direction = _myHappinessIndex < newHappinessIndex ? '+' : '-';
    _myHappinessAnimationIndex = '${newHappinessIndex.round()}$direction';
    _myHappinessIndex = newHappinessIndex;
    notifyListeners();
  }
}
