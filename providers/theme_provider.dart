import 'package:flutter/material.dart';
import 'package:follada2/preferencies/preferencies.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData temaActual;

  ThemeProvider({required bool modeNit})
      : temaActual = modeNit ? ThemeData.dark() : ThemeData.light();

  setModeDia() {
    temaActual = ThemeData.light();
    Preferencies.modeNit = false;
    notifyListeners();
  }
}
