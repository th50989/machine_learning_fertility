import 'package:flutter/material.dart';

class MyData with ChangeNotifier {
  List<double> _myGlobalVariable = [];

  List<double> get myGlobalVariable => _myGlobalVariable;

  void updateGlobalVariable(List<double> newValue) {
    _myGlobalVariable = newValue;
    notifyListeners();
  }
}
