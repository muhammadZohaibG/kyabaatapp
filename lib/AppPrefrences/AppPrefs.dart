import 'package:flutter/material.dart';
import 'package:howsfeeling/utils/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefrences{

String? language;


   Future<String>  getLang() async{
    final pref= await SharedPreferences.getInstance();
    language=pref.getString(LANG);
      return pref.getString(LANG) ?? '';
  }

}