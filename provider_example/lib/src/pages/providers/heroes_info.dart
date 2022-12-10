import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = 'Capitán América';

  Color colorBase = Colors.blue;

  String get heroe {
    return _heroe;
  }

  set heroe(String name) {
    this._heroe = name;

    this.colorBase = ( name == 'Ironman' ) ? Colors.red : Colors.blue;

    notifyListeners();
  }
}
