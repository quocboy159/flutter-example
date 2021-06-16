import 'package:flutter/material.dart';
import 'package:myapp/models/country.dart';

class LocaleProvider extends ChangeNotifier {
   final List<Country> _countries = [
    Country(name: "English", code: "en", url: "assets/england.png"),
    Country(name: "Spanish", code: "es", url: "assets/spain.png"),
  ];

  List<Country> get countries => _countries;

  List<Locale> get locales => _countries.map((e) => Locale(e.code)).toList();

  Locale _locale = Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!locales.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = Locale('en');
    notifyListeners();
  }
}