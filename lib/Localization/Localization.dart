import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Translations/English_US.dart';
import '../Translations/Urdu_PK.dart';

class LocalizationServices extends Translations{

  static final locale = Locale('English', 'US');
  static final fallbackLocale = Locale('Urdu', 'PK');

  static final Langs = ['English', 'Urdu'];

  static final locales = [Locale('English', 'US'), Locale('Urdu', 'PK')];

  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'English_US' : english,
    'Urdu_PK' : urdu,
  };

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