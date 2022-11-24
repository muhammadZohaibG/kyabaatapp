import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationServices extends Translations{

  static final locale = Locale('eng', 'US');
  static final fallbackLocale = Locale('urdu', 'PK');

  static final Langs = ['English', 'Urdu'];

  static final locales = [Locale('eng', 'US'), Locale('urdu', 'PK')];

  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => throw UnimplementedError();

  void changeLocale(String lang) {
    final locale = _getLocateFromLanguages(lang);
    Get.updateLocale(locale);
  }

  Locale _getLocateFromLanguages(String lang) {
    for (int i = 0; i < Langs.length; i++) {
      if (lang == Langs[i]) return locales[i];
    }
    return Get.locale!;
  }


}