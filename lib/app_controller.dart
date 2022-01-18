import 'package:flutter/cupertino.dart';

/**
 * controller para fazermos a mudança de tema
 */
class AppController extends ChangeNotifier {
  static AppController instance = AppController(); //para poder fazer uma instancia estatica

  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme; //para inverter o bool
    notifyListeners(); //para escutar as alterações
  }
}
