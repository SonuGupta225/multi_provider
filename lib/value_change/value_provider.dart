import 'dart:async';

import 'package:flutter/material.dart';

class ValueProvider extends ChangeNotifier {
  int moy = 0;
  updatetemp(int moy) {
    this.moy = moy;
    notifyListeners();
  }

  //? timer function
  int start = 0;
  updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }
}
