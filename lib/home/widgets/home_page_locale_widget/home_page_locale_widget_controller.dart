import 'package:flutter/material.dart';

class HomePageLocaleWidgetController with ChangeNotifier {
  Locale? activeLocale;

  init(Locale locale) => activeLocale = locale;

  void setLocale(Locale locale) {
    activeLocale = locale;
    notifyListeners();
  }
}
