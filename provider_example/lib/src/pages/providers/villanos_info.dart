
import 'package:flutter/material.dart';

class VillanosInfo with ChangeNotifier {
  String _villano = 'Red Skull';

  String get villano {
    return _villano;
  }

  set villano(String name) {
    this._villano = name;
    notifyListeners();
  }
}
