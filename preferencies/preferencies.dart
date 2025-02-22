import 'package:shared_preferences/shared_preferences.dart';

class Preferencies {
  static late SharedPreferences _prefs;
  static bool _modeNit = false;

  // Inicialitza SharedPreferences
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Getter i Setter per a l'estat del mode fosc
  static bool get modeNit {
    return _prefs.getBool('modeNit') ?? _modeNit;
  }

  static set modeNit(bool value) {
    _modeNit = value;
    _prefs.setBool('modeNit', value);
  }
}
