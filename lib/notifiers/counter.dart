import 'dart:developer';

import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    log("increment prevValue = $_count nextValue = ${_count + 1}");
    _count++;
    notifyListeners(); // Notifies all listeners to rebuild
  }
}
