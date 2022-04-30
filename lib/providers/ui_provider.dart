import 'package:flutter/material.dart';

class uiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 1;

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    this._selectedMenuOpt = i;

    notifyListeners();
  }
}
