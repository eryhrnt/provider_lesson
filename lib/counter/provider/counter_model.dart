import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  var _counter = 0;

  int get counter => _counter;

  set counter(int value) {
    if (value != _counter) {
      _counter = value;
      notifyListeners();
    }
  }

  void bagiDua(){
    if(_counter >= 2){
      _counter = (_counter/2).floor();
      notifyListeners();
    }
  }
}
